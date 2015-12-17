humans
======

Automatically update a GitHub repository with a list of contributors.

Prerequisites
-------------

The following software must be installed on your system:

* [jq](https://stedolan.github.io/jq/).
* [Git](http://git-scm.org)
* [cURL](http://curl.haxx.se)

You also need to [associate your server's SSH key with your GitHub account](https://help.github.com/articles/generating-ssh-keys/) so commits can automatically be pushed.

Installation
------------

```sh
git clone https://github.com/alyssais/autocontributors
cd autocontributors
./configure
make install
```

Contributing
------------

1. [Fork this repository](https://github.com/alyssais/autocontributors/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a pull request](https://github.com/alyssais/autocontributors/pull/new/master)
