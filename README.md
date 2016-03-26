# cmsc132-vhdl-assign01-sace1

CMSC 132 T Lecture Exercise
Deadline: March 26, 2016 (12 noon)

To run (with test bench):
> ghdl -a t-3l_sace.vhdl
> ghdl -a t-3l_sace_tb.vhdl
> ghdl -e t-3l_sace_tb
> ghdl -r t_3l_sace_tb

To run (with gtkwave):
> ghdl -r t_3l_sace_tb --vcd=buzzer6.vcd
> gtkwave buzzer6.vcd

Variable definitions:
in1 and out1 = Boggis In_Buzzer and Out_Buzzer
in2 and out2 = Bunce In_Buzzer and Out_Buzzer
in3 and out3 = Bean In_Buzzer and Out_Buzzer
