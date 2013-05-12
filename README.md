lwrp_example
============

Chef LWRP Simple Example

# How to check

Copy the directory to your cookbook lwrp_example first.

```
cp -r lwrp_example <your cookbook dir>
```

If you are using a chef-server, Upload the following command in the cookbook.

```
knife cookbook upload lwrp_example -o <your cookbook dir>
```

Add to following in another recipe that uses lwrp_example.

* metadata.rb

```
:
depends          "lwrp_example"
:
```

* your recipde(exsample)

```
:
include_recipe "lwrp_example"
:
lwrp_example_dosomething "aiueo" do
    attr_str "aaaaaaaaaa"
    attr_int 9
end

lwrp_example_dosomething "kakikukeko" do
    attr_str "bbbbbbbbbb"
    attr_int 10
    action :do_b
end
:
```
