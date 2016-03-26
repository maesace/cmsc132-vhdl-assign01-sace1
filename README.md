# cmsc132-vhdl-assign01-sace1

CMSC 132 T Lecture Exercise
Deadline: March 26, 2016 (12 noon)

To run (with test bench):
>> ghdl -a t3l_sace.vhdl
>> ghdl -a t3l_sace_tb.vhdl
>> ghdl -e t3l_sace_tb
>> ghdl -r t_3l_sace_tb

To run (with gtkwave):
>> ghdl -r t_3l_sace_tb --vcd=buzzer6.vcd
>> gtkwave buzzer6.vcd

Variable definitions:
in1 = Boggis In_Buzzer
in2 = Bunce In_Buzzer
in3 = Bean In_Buzzer

out1 = Boggis Out_Buzzer
out2 = Bunce Out_Buzzer
out3 = Bean Out_Buzzer
