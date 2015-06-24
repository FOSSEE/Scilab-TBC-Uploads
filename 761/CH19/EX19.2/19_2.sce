clc;
// page no 704
// prob no 19.2
// part a) horizontal blanking
// Horizontal blanking occupies approximately 10 us of the 63.5 us duration of each line,
Hztl_blnk=10/63.5 *100;
disp('of the signal','%',Hztl_blnk,'Horizontal blanking occupies');
// part b) vertical blanking
// Vertical blanking occupies approximately 21 lines per field or 42 lines per frame. A frame has 525 lines altogether,so
Vert_blnk=42/525 *100;
disp('of the signal','%',Vert_blnk,'vertical blanking occupies');
// part c) active signal
// since 8% of the time is lost in vertical blanking, 92% of the time is involved in the tansmission of the active lines.
act_vid = (100-Hztl_blnk)*(100-Vert_blnk)/100;
disp('%',act_vid,'The acive video is');