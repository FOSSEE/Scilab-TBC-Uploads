clear;
clc;
disp("--------------Example 22.1----------------")
// network addresses
network_address1="180.70.65.192";
network_address2="180.70.65.128";
network_address3="201.4.22.0";
network_address4="201.4.16.0";
network_address5="Any"  // Rest of the internet
// masks
mask1="/26";
mask2="/25";
mask3="/24";
mask4="/22";
mask5="Any";  // Rest of the internet
// interfaces 
interface1="     m2";
interface2="     m0";
interface3="     m3";
interface4="     m1";
interface5="     m2";  // Rest of the internet

router_address="180.70.65.200";  // Router R1
// next hop addresses
next_hop1="       -";
next_hop2="       -";
next_hop3="       -";
next_hop4="       -";
next_hop5=router_address; // For rest of the universe

// define matrices for the 4 columns of the routing table
mask = [mask1; mask2; mask3; mask4; mask5];
network_address=[network_address1; network_address2; network_address3; network_address4; network_address5];
interface=[interface1; interface2; interface3 ; interface4; interface5];
next_hop=[next_hop1;next_hop2;next_hop3;next_hop4;next_hop5];

// define a matrix for the whole routing table
routing_table=[mask network_address next_hop interface];

// displaying the routing table
printf("\n        ROUTING TABLE FOR ROUTER R1\n");
printf("\n!Mask|Network address|  Next hop  | Interface!\n"); // display the headings
disp(routing_table); // display the routing table matrix
