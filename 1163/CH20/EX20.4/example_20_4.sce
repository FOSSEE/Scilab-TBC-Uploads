clear;
clc;
disp("--------------Example 20.4---------------")
// packet = Ox45000028000100000102
packet="45000028000100000102";
bytes=strsplit(packet,[2 4 6 8 10 12 14 16 18 ]); // split the packet into bytes
time_to_live=hex2dec(bytes(9));
printf("The time-to-live field is the ninth byte, which is %s. Hence the packet can travel %d hop.\n",bytes(9),time_to_live);
protocol_field=hex2dec(bytes(10));
select protocol_field  // display the result according to the protocol
case 1
    printf("The protocol field is the next byte i.e %s, which means that the upper-layer protocol is ICMP.",bytes(10));
case 2
    printf("The protocol field is the next byte i.e %s, which means that the upper-layer protocol is IGMP.",bytes(10));
case 6
    printf("The protocol field is the next byte i.e %s, which means that the upper-layer protocol is TCP.",bytes(10));
case 17
    printf("The protocol field is the next byte i.e %s, which means that the upper-layer protocol is UDP.",bytes(10));
case 89
    printf("The protocol field is the next byte i.e %s, which means that the upper-layer protocol is OSPF".,bytes(10));
end
