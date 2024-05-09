a=imread("catimage.jpg");
b=rgb2gray(a);
m1=ones(3,3)/9;
m2=ones(5,5)/25;
h1=conv2(b,m1,"same");
h2=conv2(b,m2,"same");
subplot(2,2,1),imshow(a),title("original");
subplot(2,2,2),imshow(b),title("gray");
subplot(2,2,3),imshow(uint8(h1)),title("3*3");
subplot(2,2,4),imshow(uint8(h2)),title("5*5");
