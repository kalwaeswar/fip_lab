image = imread('catimage.jpg');
gray_image = rgb2gray(image);

% Define Prewitt Operator kernels
prewitt_x = [-1 0 1; -1 0 1; -1 0 1];
prewitt_y = [-1 -1 -1; 0 0 0; 1 1 1];

% Define Sobel Operator kernels
sobel_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];

% Define Roberts Operator kernels
roberts_x = [1 0; 0 -1];
roberts_y = [0 1; -1 0];

% Apply Prewitt Operator
prewitt_gradient_x = conv2(double(gray_image), double(prewitt_x), 'same');
prewitt_gradient_y = conv2(double(gray_image), double(prewitt_y), 'same');
prewitt_gradient = sqrt(prewitt_gradient_x.^2 + prewitt_gradient_y.^2);

% Apply Sobel Operator
sobel_gradient_x = conv2(double(gray_image), double(sobel_x), 'same');
sobel_gradient_y = conv2(double(gray_image), double(sobel_y), 'same');
sobel_gradient = sqrt(sobel_gradient_x.^2 + sobel_gradient_y.^2);

% Apply Roberts Operator
roberts_gradient_x = conv2(double(gray_image), double(roberts_x), 'same');
roberts_gradient_y = conv2(double(gray_image), double(roberts_y), 'same');
roberts_gradient = sqrt(roberts_gradient_x.^2 + roberts_gradient_y.^2);

% Display results
figure;
subplot(2, 2, 1);
imshow(uint8(gray_image));
title('Original Image');

subplot(2, 2, 2);
imshow(uint8(prewitt_gradient), []);
title('Prewitt Gradient');

subplot(2, 2, 3);
imshow(uint8(sobel_gradient), []);
title('Sobel Gradient');

subplot(2, 2, 4);
imshow(uint8(roberts_gradient), []);
title('Roberts Gradient');
