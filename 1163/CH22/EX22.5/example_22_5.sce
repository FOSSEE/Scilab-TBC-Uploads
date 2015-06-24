clear;
clc;
disp("--------------Example 22.5----------------")
total_addresses=16384; // A regional ISP is granted with 16,384 addresses
// starting address = 120.14.64.0
sa1=120;
sa2=14;
sa3=64;
sa4=0;
bin_sa=dec2bin(sa1,8)+dec2bin(sa2,8)+dec2bin(sa3,8)+dec2bin(sa4,8); // starting address in binary
la=dec2bin(bin2dec(bin_sa)+total_addresses-1,32); // last address in binary
a=strsplit(la,[8 16 24 ])  //separate the bytes
a3=bin2dec(a(1));         // convert binary numbers to decimal numbers
a2=bin2dec(a(2));
a1=bin2dec(a(3));
a0=bin2dec(a(4));
last_address=string(a3)+"."+string(a2)+"."+string(a1)+"."+string(a0); // last address in decimal notation
main_mask=18;
main_subblocks=4;
msb_addresses=total_addresses/main_subblocks; // The regional ISP divides this block into four subblocks, each with 4096 addresses.
msb_mask=main_mask+log2(main_subblocks); // the mask for each block is /20 because the original block with mask /18 is divided into 4 blocks

msb1_subblocks=8; // The first local ISP has divided its assigned subblock into 8 smaller blocks and assigned each to a small ISP
mssb1_mask=msb_mask+log2(msb1_subblocks); // he mask for each small ISP is now /23 because the block is further divided into 8 blocks.
household_addresses=4; // a household has four addresses
household_mask=32-log2(household_addresses); // formula
num_households=msb_addresses/(household_addresses*msb1_subblocks); // Each small ISP provides services to 128 households (H001 to H128)
msb1_sa=string(sa1)+"."+string(sa2)+"."+string(sa3)+"."+string(sa4); // starting address in decimal notation
la1=dec2bin(bin2dec(bin_sa)+msb_addresses-1,32); // last address in binary
a=strsplit(la1,[8 16 24 ])  //separate the bytes
a3=bin2dec(a(1));         // convert binary numbers to decimal numbers
a2=bin2dec(a(2));
a1=bin2dec(a(3));
a0=bin2dec(a(4));
last_address1=string(a3)+"."+string(a2)+"."+string(a1)+"."+string(a0); // last address in decimal notation
H001_la=dec2bin(bin2dec(bin_sa)+household_addresses-1,32); // last address in binary
a=strsplit(H001_la,[8 16 24 ])  //separate the bytes
a3=bin2dec(a(1));         // convert binary numbers to decimal numbers
a2=bin2dec(a(2));
a1=bin2dec(a(3));
a0=bin2dec(a(4));
last_address_H001=string(a3)+"."+string(a2)+"."+string(a1)+"."+string(a0); // last address in decimal notation


msb2_subblocks=4; //The second local ISP divides its block into 4 blocks and assigns the addresses to four large organizations (LOrg01 to LOrg04).
Lorg_addresses=msb_addresses/msb2_subblocks; // number of addresses possessed by each large organization
mssb2_mask=msb_mask+log2(msb2_subblocks); // mask of the large organization addresses
sas2=dec2bin(bin2dec(bin_sa)+2*(msb_addresses),32); // starting address in binary
a=strsplit(sas2,[8 16 24 ])  //separate the bytes
a3=bin2dec(a(1));         // convert binary numbers to decimal numbers
a2=bin2dec(a(2));
a1=bin2dec(a(3));
a0=bin2dec(a(4));
start_address2=string(a3)+"."+string(a2)+"."+string(a1)+"."+string(a0); // starting address in decimal notation

msb3_subblocks=16; //The third local ISP divides its block into 16 blocks and assigns the addresses to 15 small organizations (SOrg01 to SOrg16).
Sorg_addresses=msb_addresses/msb3_subblocks; // number of addresses possessed by each small organization
mssb3_mask=msb_mask+log2(msb3_subblocks); // mask of the small organization addresses
sas3=dec2bin(bin2dec(bin_sa)+3*(msb_addresses),32); // starting address in binary
a=strsplit(sas3,[8 16 24 ])  //separate the bytes
a3=bin2dec(a(1));         // convert binary numbers to decimal numbers
a2=bin2dec(a(2));
a1=bin2dec(a(3));
a0=bin2dec(a(4));
start_address3=string(a3)+"."+string(a2)+"."+string(a1)+"."+string(a0); // starting address in decimal notation

// display the result

printf("A regional ISP is granted %d addresses starting from %s .The regional ISP has decided to divide this block into %d subblocks,\neach with %d addresses.Three of these subblocks are assigned to three local ISPs; the second subblock is reserved for future use.\nThe mask for each block is /%d because the original block with mask /%d is divided into %d blocks.\n\nThe first local ISP has divided its assigned subblock into %d smaller blocks and assigned each to a small ISP.\nEach small ISP provides services to %d households (H001 to H128),each using %d addresses.\nThe mask for each small ISP is now /%d because the block is further divided into %d blocks. Each household has a mask of /%d\nbecause a household has only %d addresses.\n\nThe second local ISP has divided its block into %d blocks and has assigned the addresses to %d large organizations (LOrg01 to LOrg04).\nEach large organization has %d addresses, and the mask is /%d and the starting address is %s .\n\nThe third local ISP has divided its block into %d blocks and has assigned the addresses to %d large organizations (SOrg01 to SOrg16).\nEach large organization has %d addresses, and the mask is /%d and the starting address is %s .\n\nThere is a sense of hierarchy in this configuration. All routers in the Internet send a packet with destination address\n%s to %s to the regional ISP.\n\nThe regional ISP sends every packet with destination address %s to %s to local ISPl.\nLocal ISP1 sends every packet with destination address %s to %s to H001.",total_addresses,msb1_sa,main_subblocks,msb_addresses,msb_mask,main_mask,main_subblocks,msb1_subblocks,num_households,household_addresses,mssb1_mask,msb1_subblocks,household_mask,household_addresses,msb2_subblocks,msb2_subblocks,Lorg_addresses,mssb2_mask,start_address2,msb3_subblocks,msb3_subblocks,Sorg_addresses,mssb3_mask,start_address3,msb1_sa,last_address,msb1_sa,last_address1,msb1_sa,last_address_H001);
