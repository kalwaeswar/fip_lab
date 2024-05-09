a = imread("catimage.jpg");
b = rgb2gray(a);

% Define kernel
kernel = ones(11, 11) / 121;

% Perform Fourier Transform of the image and kernel
f_b = fft2(b);
f_k = fft2(kernel, size(b, 1), size(b, 2));

% Perform Fourier domain multiplication
f_i = f_b .* f_k;

% Inverse Fourier Transform to get the filtered image
f_if = ifft2(f_i);

% Display the filtered image
imshow(uint8(f_if));

% Calculate power spectrum
ps = (f_i .* conj(f_i)) / (size(b, 1) * size(b, 2));

% Calculate the image with inverse filter
im = (conj(f_k) .* f_i) ./ (ps + 0.01); % Adding small value to avoid division by zero

% Inverse Fourier Transform to get the filtered image
im_if = ifft2(im);

% Display the image after inverse filtering
figure;
imshow(uint8(im_if));
