onerror {resume}
quietly WaveActivateNextPane {} 0

# Add wave lines here...  i.e. add wave -noupdate -color #eb34eb /tb/led_output
add wave -radix unsigned -noupdate /generic_adder_bench/uut/a
add wave -radix unsigned -noupdate /generic_adder_bench/uut/b
add wave -noupdate /generic_adder_bench/uut/cin
add wave -radix unsigned -noupdate /generic_adder_bench/uut/sum
add wave -noupdate /generic_adder_bench/uut/cout

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 177
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {5999999 ps} {6000001 ps}

run 8000 ns