a=imread('noisyimg.jpg');
b=rgb2gray(a);
subplot(2,4,1),imshow(b),title("original");
subplot(2,4,3),imhist(b),title("histogram");
c=histeq(b);
subplot(2,4,5),imshow(c),title("histeq image");
subplot(2,4,7),imhist(c),title("histogram eq");
