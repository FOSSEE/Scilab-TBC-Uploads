//          Example 2.1
// Representation of integer constants on a 16-bit computer.

disp("Integer values");
//Integer values larger than 32767 are not stored properly on 16-bit machine
printf("%d %d %d \n",int16(32767),int16(32767+1),int16(32767+10));

disp("Long integer values");
//To store long integers properly, use int32 integer type
printf("%ld %ld %ld \n",int32(32767),int32(32767+1),int32(32767+10));
//The same result as from above statement can be achieved directly from below commented statement
//printf("%ld %ld %ld\n",32767,32767+1,32767+10);