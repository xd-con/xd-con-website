# xd-con.org

Home of the Across Domains conference series.

## Installing Hugo

This site is built using Hugo.  Please download the latest binary from

https://github.com/gohugoio/hugo/releases

and place it somewhere on your path.

## Building the website

Download the theme:

```
git submodule update --init
```

For development, start the development server using

```
cd site
hugo server
```

and browse to http://localhost:1313.

To deploy to https://xd-con.github.io, run `make github`.
