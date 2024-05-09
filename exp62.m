image = imread('catimage.jpg');
gray_image = rgb2gray(image);

% Apply Prewitt Operator
prewitt_edge = edge(gray_image, 'prewitt');

% Apply Sobel Operator
sobel_edge = edge(gray_image, 'sobel');

% Apply Roberts Operator
roberts_edge = edge(gray_image, 'roberts');

% Display results
figure;
subplot(2, 2, 1);
imshow(uint8(gray_image));
title('Original Image');

subplot(2, 2, 2);
imshow(prewitt_edge);
title('Prewitt Edge Detection');

subplot(2, 2, 3);
imshow(sobel_edge);
title('Sobel Edge Detection');

subplot(2, 2, 4);
imshow(roberts_edge);
title('Roberts Edge Detection');
