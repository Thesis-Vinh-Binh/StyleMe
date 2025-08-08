#!/bin/bash
#SBATCH --job-name=eval2         # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core (4G is default)
#SBATCH --gres=gpu:4             # number of gpus per node
#SBATCH --time=48:00:00          # total run time limit (HH:MM:SS)

# module purge
# module load anaconda3/2023.9
conda init
# source ~/.bashrc
conda activate deep
python evaluate.py --path_content /media02/ltnghia07/evaluate-2d/dataset/sample --path_result /media02/ltnghia07/evaluate-2d/sample --im_size 256 --checkpoint /media02/ltnghia07/StyleMe/sketch_generation/model/train_results/finetune3/models/29999_model.pth
# python evaluate.py --path_content traindataset --path_result res4 --checkpoint /media02/ltnghia07/StyleMe/sketch_generation/model/train_results/test2/models/99_model.pth
# python evaluate.py --path_content dataset --path_result res4 --im_size 256 --checkpoint /media02/ltnghia07/StyleMe/sketch_generation/model/train_results/finetune3/models/29999_model.pth
# python train.py --trial_name finetune3 --path_a /media02/ltnghia07/StyleMe/sketch_generation/clothdataset/RGB --path_b /media02/ltnghia07/StyleMe/sketch_generation/clothdataset/Sketch --im_size 256 --batch_size 4 --total_iter 100000 --checkpoint /media02/ltnghia07/StyleMe/sketch_generation/model/train_results/finetune2/models/19999_model.pth
