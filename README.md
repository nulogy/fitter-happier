FitterHappier
=============

FitterHappier provides actions for monitoring a rails site and database availability. FitterHappier's monitoring controller disables unnecessary Rails features, like sessions, layouts, and logging, for lightning-fast monitoring URIs.  

FitterHappier provides three monitoring URIs 

    % curl localhost:3000/fitter_happier
    FitterHappier Site Check Passed

    % curl localhost:3000/fitter_happier/site_check
    FitterHappier Site Check Passed @ Wed, 17 Dec 2008 14:27:47 -0800

    % curl localhost:3000/fitter_happier/site_and_database_check
    FitterHappier Site and Database Check Passed @ Wed, 17 Dec 2008 14:27:57 -0800
    Schema Version: 20081217141904

Note: to disable output from Rails Footnotes append '?footnotes=false' to the URIs above. Of course, Rails Footnotes is not recommended for production use.

Installation
============
Add the following to your gemfile

    gem 'fitter-happier'

Uptime Monitoring
=================

See EngineYard's support guide on [uptime monitoring for your rails application](http://www.engineyard.com/support/guides/uptime_monitoring_for_your_rails_application)

Monit
=====

You can do simple checks with monit like this:

    if failed host 127.0.0.1 port 5000
      protocol HTTP request /fitter_happier with checksum 15b8a1ee66d740fbfc00297684bb5430 then restart

Keepalived/LVS
==============

You can also do this in a keepalived/LVS setup:

    virtual_server 169.254.y.z 80 {
      delay_loop 15
      lb_algo lc
      lb_kind NAT
      nat_mask 255.255.255.0
      persistence_timeout 0
      protocol TCP
      sorry_server 127.0.0.1 80
      virtualhost www.myfacetube.com
      real_server 10.0.1.34 80 {
        weight 1
        HTTP_GET {
          url {
            path /fitter_happier
            status_code 200
          }
          connect_port 80
          connect_timeout 5
          nb_get_retry 20
          delay_before_retry 2
        }
      }
      real_server 10.0.1.35 80 {
        weight 1
        HTTP_GET {
          url {
            path /fitter_happier
            status_code 200
          }
          connect_port 80
          connect_timeout 5
          nb_get_retry 20
          delay_before_retry 2
        }
      }
    }

Copyright (c) 2008 atmos, released under the MIT license
