clear;
clc;
disp("--------------Example 23.3----------------")
first_byte= 10001;
num_segments=5;
total_bytes = 5000;
segment=1000; // each segment carries 1000 bytes
// compute the sequence numbers of each segment
segment1_sequence_num = first_byte;
segment2_sequence_num = segment1_sequence_num+segment;
segment3_sequence_num = segment2_sequence_num+segment;
segment4_sequence_num = segment3_sequence_num+segment;
segment5_sequence_num = segment4_sequence_num+segment;
// find the range of each segment
range1=segment1_sequence_num+segment-1;
range2=range1+segment;
range3=range2+segment;
range4=range3+segment;
range5=range4+segment;
// display the result
printf("Segment 1:- Sequence Number: %d and range: %d to %d\nSegment 2:- Sequence Number: %d and range: %d to %d\nSegment 3:- Sequence Number: %d and range: %d to %d\nSegment 4:- Sequence Number: %d and range: %d to %d\nSegment 5:- Sequence Number: %d and range: %d to %d",segment1_sequence_num,segment1_sequence_num,range1,segment2_sequence_num,segment2_sequence_num,range2,segment3_sequence_num,segment3_sequence_num,range3,segment4_sequence_num,segment4_sequence_num,range4,segment5_sequence_num,segment5_sequence_num,range5);
