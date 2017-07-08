# Materials for Structural Variant Calling Section

## Introduction

Here are some materials used for Structural Variant Calling section in **Bioinformatic Summer school in Viet Nam 2017**.
Included:
-	codes for reading BAM files
-	example BAM file
-	the gold standard of SVs called by Tardis

## Reading BAM file

### Libraries

There are some libraries used for reading BAM file in: 
-	C (htslib and samtools)
-	C++ (Bamtools)
-	Python (pysam).

You should take a look the example codes in this repository, which cointaining the API for reading BAM files, to implement your SV calling tool.

###	Installation
required: zlib
```
git clone --recurse-submodules https://github.com/SummerSchoolVN/SV_Materials
cd SV_Materials

### Install Bamtools

mkdir ./lib/bamtools/build && cd ./lib/bamtools/build
cmake ../
make

### Install htslib

cd /path/to/SV_Materials/lib/htslib
make

### Install pysam

sudo pip intall pysam
```

###	Make test
Some examples codes were provided for reading BAM file: ```test.cc```, ```test.c```, and ```test.py```

```cd /path/to/SV_Materials && make```


### Testing
Before testing, just add bammtool and htslib library into your **LD_LIBRARY_PATH**:

```export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/path/to/bamtools/lib:/path/to/htslib```

Then you could test the example codes as below:

```python test.py <path to BAM file>```

```./test_c <path to BAM file>```

``` ./test.cc </path to BAM file>```

##	BAM files and SV calling code

BAM file and the tool for calling SV could be download at: https://www.dropbox.com/s/5g11wamij3titbv/SV_Pred.tar.gz?dl=0

## Standard result

Standard result could be downloaded at:
https://www.dropbox.com/s/apy5e2p8h15fs99/CHM1_Del_pacBio.hg19.chr22%20%281%29.bed?dl=0
