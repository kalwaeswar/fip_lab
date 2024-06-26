image=imread("catimage.jpg");
gi=rgb2gray(image);
ni=imnoise(gi,"gaussian");
f1=ones(3,3)/9;
f2=ones(5,5)/25;
h1=conv2(ni,f1,"same");
h2=conv2(ni,f2,"same");
subplot(2,2,1),imshow(image),title("original image");
subplot(2,2,2),imshow(gi),title("gray image");
subplot(2,2,3),imshow(uint8(h1)),title("filter 1");
subplot(2,2,4),imshow(uint8(h2)),title("filter 2");