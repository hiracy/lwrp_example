action :do_a do
    converge_by("do_A #{new_resource.attr_name} via lwrp_example") do
        Chef::Log.info("do_A started")

        bash "do_A" do
          code <<-EOH
            [ -f /tmp/do_a.log ] && { rm -f /tmp/do_a.log; }
            date >> /tmp/do_a.log
            echo "do_A: name=#{new_resource.attr_name} str=#{new_resource.attr_str} int=#{new_resource.attr_int}" >> /tmp/do_a.log
            uname -a >> /tmp/do_a.log
          EOH
        end
    end
end

action :do_b do
    converge_by("do_B #{new_resource.attr_name} via lwrp_example") do
        Chef::Log.info("do_B started")

        bash "do_B" do
          code <<-EOH
            [ -f /tmp/do_b.log ] && { rm -f /tmp/do_b.log; }
            date >> /tmp/do_b.log
            echo "do_B: name=#{new_resource.attr_name} str=#{new_resource.attr_str} int=#{new_resource.attr_int}" >> /tmp/do_b.log
            cat /proc/cpuinfo >> /tmp/do_b.log
          EOH
        end
    end
end

def whyrun_supported?
  true
end

