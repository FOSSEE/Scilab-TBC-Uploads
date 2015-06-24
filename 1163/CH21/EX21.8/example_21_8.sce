clear;
clc;
disp("--------------Example 21.8----------------")
// multicast IP address 238.212.24.9
multicast_IP_address=dec2bin(238,5)+dec2bin(212,7)+dec2bin(24,7)+dec2bin(9,7); 
s=strsplit(multicast_IP_address,length(multicast_IP_address)-23);
b=strsplit(s(2),[9 16]);
starting_Ethernet_addr = "01:00:5E"; // 01:00:5E:00:00:00
Ethernet_multicast_addr=starting_Ethernet_addr;

function[Ethernet_multicast_addr] = ethernet_address(b) // function to form Ethernet multicast physical address
    for i=1:3
        d=bin2dec(b(i));
        h(i)=dec2hex(d);  // rightmost 23 bits of the IP address in hexadecimal
        
    end
    
    hs=strsplit(h(1));
    if(hex2dec(hs(1)) > = 8)   //subtract 8 from the leftmost digit if it is greater than or equal to 8
        hs(1)=dec2hex(hex2dec(hs(1))-8);
    end
    h(1)=hs(1)+hs(2);
    for i=1:6   // add these hexadecimal digits to the starting Ethernet multicast address, which is 01:00:5E:00:00:00
        if(modulo(i,2) == 0)
            if(length(h(i/2))==2)
                Ethernet_multicast_addr=Ethernet_multicast_addr+h(i/2);
            else
                Ethernet_multicast_addr=Ethernet_multicast_addr+'0'+h(i/2);
            end

        else
            Ethernet_multicast_addr=Ethernet_multicast_addr+":";
        end
    end
endfunction

Ethernet_multicast_addr=ethernet_address(b);
printf("The Ethernet multicast physical address is %s.",Ethernet_multicast_addr);  // display result
