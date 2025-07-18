cd /media02/ltnghia07/StyleMe/sketch_generation

# install model
cat vgg-feature-weights.z01 vgg-feature-weights.z02 vgg-feature-weights.zip > vgg-feature-weights-full.zip
unzip vgg-feature-weights-full.zip

# install dataset
pip install gdown
# data (sketch,rgb) https://drive.google.com/drive/folders/1UycahUifPoc0n6pyP92bWC07BlJETwRR
# gdown --id 1UycahUifPoc0n6pyP92bWC07BlJETwRR
gdown --folder https://drive.google.com/drive/folders/1UycahUifPoc0n6pyP92bWC07BlJETwRR

# data full
# https://drive.google.com/drive/folders/1tAHeblEon0Awb3QchTlLq9Knyc443i3x
gdown --folder https://drive.google.com/drive/folders/1tAHeblEon0Awb3QchTlLq9Knyc443i3x
