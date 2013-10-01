# Hide Heroku

Hides default Heroku (*.herokuapp.com) URLs from search engines in order to avoid duplicate content issues.

## Info

All Heroku apps are accessible via the **\*herokuapp.com**, even after a custom domain is assigned. This introduces the potential for duplicate content issues if search engines index the same content under both custom and default domains. 

HideHeroku blocks robots from all content served under the **\*.herokuapp.com** domain, *including* assets, by issuing 'noindex, nofollow' **X-Robots-Tag** HTTP response headers on those requests.

More on **X-Robots-Tags**:

 - [Robots meta tag and X-Robots-Tag HTTP header specifications - Google Webmasters](https://developers.google.com/webmasters/control-crawl-index/docs/robots_meta_tag)
 - [Preventing your site from being indexed, the right way • Yoast](http://yoast.com/prevent-site-being-indexed/)
 - [Using the X-Robots-Tag HTTP Header Specifications in SEO: Tips and Tricks - SEO Chat](http://www.seochat.com/c/a/search-engine-optimization-help/using-the-x-robots-tag-http-header-specifications-in-seo-tips-and-tricks/)


## Installation

hide_heroku is Rack middleware that can be used with Rails or any other Rack application.

Add this line to your application's Gemfile:

    gem 'hide_heroku'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hide_heroku

For non-rails applications, add this line to the config.ru file:

    use Rack::HideHeroku


