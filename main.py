from argparse import ArgumentParser
parser = ArgumentParser()
parser.add_argument('--dataset', type=str, required=True)
args = parser.parse_args()

def process_dataset(dataset):
    print(f'Processing {dataset}...')
    
    # sleep 2 seconds
    import time
    time.sleep(2)

if __name__ == '__main__':
    process_dataset(args.dataset) 