This is a slightly more complex example to also illustrate a few more issues with route translator:

## Running it locally

To run this locally, in development mode, make sure `de.local` and `en.local` are set up as aliases for localhost.

On a Unix-like system, you can usually do this by updating your `/etc/hosts` file to look something like this:

``` hosts
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1		localhost de.local en.local
255.255.255.255		broadcasthost
::1                          localhost de.local en.local
```