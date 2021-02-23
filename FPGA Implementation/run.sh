# shell script to run complete FPGA flow

echo "Processing using SandPiper(TM) SaaS Edition."

# Give the respective tlv file as top. For eg, for counter test case give it as counter.tlv
curl -F 'top.tlv=@mythcore_test.tlv'  http://saas.makerchip.com/sandpiper | tar -zx && cat out/stdout

rm vivado*
rm usage_*

rm -rf out/FPGA_*

# Run impl_core for MYTH RISCV Core and impl_counter for test case
vivado -mode batch -source impl_core.tcl 
