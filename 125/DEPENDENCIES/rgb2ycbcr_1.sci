function [ycc] = rgb2ycbcr_1(rgb)
  //rgb=im2double(rgb);
  rgb = double(rgb)
  tmp=int_cvtcolor(rgb, 'rgb2ycrcb');
  ycc=zeros(tmp);

  ycc(:,:,1) = tmp(:,:,1);
  ycc(:,:,2) = tmp(:,:,3);
  ycc(:,:,3) = tmp(:,:,2);
  clear tmp;
endfunction