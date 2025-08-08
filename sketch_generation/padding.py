import os
from PIL import Image, ImageOps

def pad_images_to_1024x1024(input_folder):
    output_folder = os.path.join(input_folder, 'output')
    os.makedirs(output_folder, exist_ok=True)

    for filename in os.listdir(input_folder):
        input_path = os.path.join(input_folder, filename)

        # Skip directories
        if os.path.isdir(input_path):
            continue

        try:
            img = Image.open(input_path).convert('RGB')  # Ensure RGB mode
            width, height = img.size

            # Process only 512x1024 images
            if (width, height) == (512, 1024):
                # Calculate padding to center horizontally
                left_pad = 256
                right_pad = 256
                top_pad = 0
                bottom_pad = 0

                # Use white padding (255, 255, 255)
                padded_img = ImageOps.expand(img, border=(left_pad, top_pad, right_pad, bottom_pad), fill=(255, 255, 255))
                output_path = os.path.join(output_folder, filename)
                padded_img.save(output_path)
                print(f"Padded: {filename}")
            else:
                print(f"Skipped (wrong size): {filename}")
        except Exception as e:
            print(f"Error processing {filename}: {e}")

# Example usage:
pad_images_to_1024x1024('/media02/ltnghia07/StyleMe/sketch_generation/dataset/custom')
