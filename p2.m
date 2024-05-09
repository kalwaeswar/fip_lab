image=imread("catimage.jpg");
gi=rgb2gray(image);
eqimg=histeq(gi);
subplot(2,4,1),imshow(gi),title("original");
subplot(2,4,3),imhist(gi),title("gray image histogram");
subplot(2,4,5),imshow(eqimg),title("equilized image");
subplot(2,4,7),imhist(eqimg),title("equilized histogram");