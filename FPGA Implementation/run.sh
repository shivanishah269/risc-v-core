# shell script to run complete FPGA flow

echo "Processing Myth Core using SandPiper(TM) SaaS Edition."
curl -F 'top.tlv=@mythcore_test.tlv'  http://saas.makerchip.com/sandpiper | tar -zx && cat out/stdout

rm vivado*
rm usage_*
cd out
rm -rf FPGA

sed -i 's/logic/wire/g' mythcore_*.sv
sed -i 's/bit/wire/g' mythcore_*.sv
sed -i 's/imem++/imem=imem+1/g' mythcore_*.sv 
sed -i 's/xreg++/xreg=xreg+1/g' mythcore_*.sv
sed -i 's/dmem++/dmem=dmem+1/g' mythcore_*.sv 
sed -i 's/`line 2 "mythcore_test.tlv" 0/ /g' mythcore_test.sv

cd ..
vivado -mode batch -source impl.tcl




	  
