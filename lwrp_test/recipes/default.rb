include_recipe "lwrp_example"

lwrp_example_dosomething "aiueo" do
    attr_str "aaaaaaaaaa"
    attr_int 9
end

lwrp_example_dosomething "kakikukeko" do
    attr_str "bbbbbbbbbb"
    attr_int 10
    action :do_b
end

