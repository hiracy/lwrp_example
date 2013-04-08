lwrp_example
============

Chef LWRP Simple Example

# How to check

Copy the directory to your cookbook lwrp_example and lwrp_example first.

```
cp -r lwrp_example <your cookbook dir>
cp -r lwrp_test    <your cookbook dir>
```

Upload the following command at a cookbook to use with chef-server

```
knife cookbook upload lwrp_example -o <your cookbook dir>
knife cookbook upload lwrp_example -o <your cookbook dir>
```

Add the recipe to lwrp_test run-list to edit the node.

```
knife node edit <your chef-client node>
```
```
:
  "run_list": [
    "recipe[lwrp_test]"
  ]
:
```

