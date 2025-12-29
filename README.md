# FitterHappier

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

# Installation

Add the following to your gemfile

    gem 'fitter-happier'

# Testing

```
$ bundle exec appraisal install
$ bundle exec appraisal rake spec
```

# License

[Licensed under MIT](./MIT-LICENSE)
