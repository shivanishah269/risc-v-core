# shell script to run complete FPGA flow

echo "Processing Myth Core using SandPiper(TM) SaaS Edition."
curl -F 'top.tlv=@mythcore_test.tlv'  http://saas.makerchip.com/sandpiper | tar -zx && cat out/stdout

rm vivado*
rm usage_*

rm -rf out/FPGA

vivado -mode batch -source impl.tcl 
