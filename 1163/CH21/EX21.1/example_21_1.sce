clear;
clc;
disp("--------------Example 21.1---------------")
// ARP Request
Hardware_type="0001"; // Ethetnet = 1 , in hexadecimal
Protocol_type="0800";// IPv4 = 0800 in hexadecimal
Hardware_length="06"; // for Ethernet in hexadecimal
Protocol_length="04"; // for IPv4 in hexadecimal
Operation="0001"; // request=1 , in hexadecimal
Sender_hw_addr="B23455102210" // sender hardware address = B2:34:55:10:22:10 in hexadecimal
Sender_pr_addr="130.23.43.20"; // sender protocol address=IP address
Target_hw_addr="000000000000"; // unknown to sender , hence target hardware address = broadcast address
Target_pr_addr="130.23.43.25"; // target protocol address=IP address
// display ARP Request packet
printf("ARP Request Packet\n");
printf("        __________________________________________________\n");
printf("       |____0x%s_______________|____0x%s______________|\n",Hardware_type,Protocol_type);
printf("       |___0x%s______|___0x%s____|____0x%s______________|\n",Hardware_length,Protocol_length,Operation);
printf("       |_______________0x%s_____________________|\n",Sender_hw_addr);
printf("       |_________________%s_____________________|\n",Sender_pr_addr);
printf("       |_______________0x%s_____________________|\n",Target_hw_addr);
printf("       |_________________%s_____________________|\n",Target_pr_addr);

// ARP Reply
Hardware_type="0001"; // Ethetnet = 1 , in hexadecimal
Protocol_type="0800";// IPv4 = 0800 in hexadecimal
Hardware_length="06"; // for Ethernet in hexadecimal
Protocol_length="04"; // for IPv4 in hexadecimal
Operation="0002"; // reply=1 , in hexadecimal
Sender_hw_addr="A46EF45983AB" // sender hardware address = A4:6E:F4:59:83:AB in hexadecimal
Sender_pr_addr="130.23.43.25"; // sender protocol address=IP address
Target_hw_addr="B23455102210"; //  target hardware address = B2:34:55:10:22:10 in hexadecimal
Target_pr_addr="130.23.43.20"; // target protocol address=IP address
// display ARP Reply Packet
printf("\nARP Reply Packet\n");
printf("        __________________________________________________\n");
printf("       |____0x%s_______________|____0x%s______________|\n",Hardware_type,Protocol_type);
printf("       |___0x%s______|___0x%s____|____0x%s______________|\n",Hardware_length,Protocol_length,Operation);
printf("       |_______________0x%s_____________________|\n",Sender_hw_addr);
printf("       |_________________%s_____________________|\n",Sender_pr_addr);
printf("       |_______________0x%s_____________________|\n",Target_hw_addr);
printf("       |_________________%s_____________________|\n",Target_pr_addr);

