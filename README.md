# GNU Parallel Demo

I demo how to use `cpulimit` and `parallel` commands to process multiple datasets in a parallel manner.

## Installation

You need to install `cpulimit` and `parallel` package. If you do not have the sudo permissions, please ask the admin to do so.

```bash 
sudo apt update -y 
sudo apt install cpulimit parallel
```

## Basic usage

Make the `submit-job.sh` file runnable by using the following command

```bash
chmod +x submit-job.sh
```

Run it 

```bash 
./submit-job.sh
```

The expected output looks like 

```
@phamquiluan ➜ /workspaces/parallel (main) $ ./submit-job.sh 
Processing data/dataset8.csv...
Process 14363 detected
Child process is finished, exiting...
Processing data/dataset3.csv...
Process 14365 detected
Child process is finished, exiting...
Processing data/dataset10.csv...
Process 14416 detected
Child process is finished, exiting...
Processing data/dataset2.csv...
Process 14419 detected
Child process is finished, exiting...
Processing data/dataset7.csv...
Process 14445 detected
Child process is finished, exiting...
Processing data/dataset.csv...
Process 14448 detected
Child process is finished, exiting...
Processing data/dataset5.csv...
Process 14494 detected
Child process is finished, exiting...
Processing data/dataset9.csv...
Process 14497 detected
Child process is finished, exiting...
Processing data/dataset4.csv...
Process 14542 detected
Child process is finished, exiting...
Processing data/dataset1.csv...
Process 14545 detected
Child process is finished, exiting...
Processing data/dataset6.csv...
Process 14560 detected
Child process is finished, exiting...
```


## How to customize

Update your main.py file, make sure it can run with the following command

```
python main.py --dataset <dataset-path>
```

Update the `find` command in the submit-job.sh file, make sure it can find all of your datasets

```
find data -name '*.csv'
```

The expected output of the `find` command looks like

```
data/dataset8.csv
data/dataset3.csv
data/dataset10.csv
data/dataset2.csv
data/dataset7.csv
data/dataset.csv
data/dataset5.csv
data/dataset9.csv
data/dataset4.csv
data/dataset1.csv
data/dataset6.csv
```

You can take a look at the `submit-job.sh` file and customize it as you want. To refer to the manual, you can use the `man` command on the command line or search on Google. For example: `man cpulimit` will produce output like this

```
CPULIMIT(1)                                                                                         User commands                                                                                        CPULIMIT(1)

NAME
       cpulimit -- limits the CPU usage of a process

SYNOPSIS
       cpulimit [TARGET] [OPTIONS...] [ -- PROGRAM]

DESCRIPTION
       TARGET must be exactly one of these:

       -p, --pid=N
              pid of the process

       -e, --exe=FILE
              name of the executable program file

       -P, --path=PATH
              absolute path name of the executable program file

       OPTIONS

       -b, --background
              run cpulimit in the background, freeing up the terminal

       -f, --foreground
              run cpulimit in foreground while waiting for launched process to finish

       -c, --cpu
              specify the number of CPU cores available. Usually this is detected for us.
...
```
https://manpages.ubuntu.com/manpages/trusty/man1/cpulimit.1.html