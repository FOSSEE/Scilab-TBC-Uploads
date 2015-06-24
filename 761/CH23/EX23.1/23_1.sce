clc;
// page no 863
// prob no 23.1
bit_rate = 512;//ib bps
t=60;//in sec
// preamble uses 576 bits
preamble=576;
bits_total = bit_rate * t;;
usable_bits = bits_total - preamble;
// each batch has one 32-bits synchronizing codeword and sixteen 32-bit address codewords for a total of 17*32=544bits. Therefore
bits_per_batch= 17*32;
batches_per_min = usable_bits / bits_per_batch;
addr=16;
addr_per_min = batches_per_min*addr;
disp(addr_per_min,'The no of pages transmitted in one min are');