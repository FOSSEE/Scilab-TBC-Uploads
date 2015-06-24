clear;
clc;
disp("--------------Example 22.4----------------")
// network addresses
network_addresses=["180.70.65.192","180.70.65.128","201.4.22.0","201.4.16.0","Any"];
// masks
mask=[26,25,24,22];

// interfaces 
interface=["m2" "m0" "m3" "m1" "m2"];
//destination address = 18.24.32.78
byte1=18;
byte2=24;
byte3=32;
byte4=78;
// convert it to binary 
b1=dec2bin(byte1,8); 
b2=dec2bin(byte2,8); 
b3=dec2bin(byte3,8); 
b4=dec2bin(byte4,8);
destination_address=b1+b2+b3+b4; 
network_address="";

nexthop_address="180.70.65.200";  // Router R1 address

for i=1:4  // applying the each of the masks to the destination address
    na=""; 
    printf("\n\n%d) The mask /%d is applied to the destination address.",i,mask(i));
    nz=32-mask(i);  // number of zeros after applying the mask
    s=strsplit(destination_address);
        for k=33-nz:32
            s(k)='0';  // replacing last 'nz' bits with zeros
        end
        for k=1:32
            na=na+s(k); // new address in binary
        end
        bytes=strsplit(na,[8 16 24]); // split the new address into bytes
       // convert them to decimal
        d1=bin2dec(bytes(1));
        d2=bin2dec(bytes(2));
        d3=bin2dec(bytes(3));
        d4=bin2dec(bytes(4));
        network_address=string(d1)+"."+string(d2)+"."+string(d3)+"."+string(d4); // final network address in decimal notation

    if(network_address==network_addresses(i))  // check if it matches with any given network addresses and display appropriate results
        printf("\nThe result is %s, which matches the corresponding network address %s .\nThe destination address of the packet and the interface number %s are passed to ARP.",network_address,network_addresses(i),interface(i));
        break;
    else
        printf("\nThe result is %s, which does not match the corresponding network address %s.",network_address,network_addresses(i));
    end
end

if(i==4) // if it doesnt match any of the 4 given network addresses
    printf("\n\nNo matching network address is found.\nWhen it reaches the end of the table, the module gives the next-hop address %s and interface number %s to ARP.\nThis is probably an outgoing package that needs to be sent, via the default router, to someplace else in the Internet.",nexthop_address,interface(5))
end
