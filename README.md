build_assembly.sh
bash script that automatically builds assembly code from .s files into a binary file

assemble_shellcode.py
python script that automatically assemblres shellcode into a binary file.

assembly_to_shellcode.py
python script which extracts the shellcode equivalent of a given .s file

info proc all 
view all info os kernel has on the current procedure including size of the stack

x/2000xb $esp+1400 
view the stack


/usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 1200 > pattern.txt


run $(python -c "print 'Aa0Aa1Aa2Aa3Aa4Aa5...<SNIP>...Bn6Bn7Bn8Bn9'")


/usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -q 0x69423569

