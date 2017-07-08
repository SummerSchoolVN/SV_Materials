import pysam
import sys
import os

"""
For more attributes and functions of one aligned read, 
please visit: https://media.readthedocs.org/pdf/pysam/latest/pysam.pdf
in the section: class pysam.AlignedSegment (page 11)
"""

if __name__ == "__main__":

    ### Reading
    # reading BAM 
    # path/to/BAM file as the first argument
    # NOTE: please put the index .bai file at the same place of BAM file
    oBAM = pysam.AlignmentFile("CHM1_chr22.bam", "rb")

    # reading SAM
    #oSAM = pysam.AlignmentFile("CHM1_chr22.sam", "r")

    ### Fetching reads mapped to a region
    # oSAM and oBAM are now equivalent
    # Get reads of chromosome 22, which overlap the region 16050090, 16050100
    # oBAM.fecth("22", 16050199, 16050300) could be used as an iterator
    reads = [read for read in oBAM.fetch("22", 16050199, 16050300)]

    ### Attributes of one read
    # r belong to class pysam.AlignedSegment
    r = reads[0]

    # CIGAR string (Alignment string)
    """
    CIGAR in SAM/BAM Description 
    M 0 alignment match (can be a sequence match or mismatch)
    I 1 insertion to the reference 
    D 2 deletion from the reference 
    N 3 skipped region from the reference 
    S 4 soft clipping (clipped sequences present in SEQ) 
    H 5 hard clipping (clipped sequences NOT present in SEQ) 
    P 6 padding (silent deletion from padded reference) 
    = 7 sequence match 
    X 8 sequence mismatch
    """
    print "CIGAR string:", r.cigarstring 

    # CIGAR tuples: same as CIGAR string, but splitted in tupple format
    #               and operations was encoded in integer
    print "CIGAR tuple:", r.cigartuples

    # is_proper_pair : True if read is mapped in a proper pai
    print "is_proper_pair:", r.is_proper_pair

    # is_read1: return True of read is the first read in one read pair
    print "is_read1:", r.is_read1

    # is_read2 : opposite to is_read2
    print "is_read2:", r.is_read2

    # is_reverse: return True if read is mapped to reverse strand
    print "is_reverse:", r.is_reverse

    # is_secondary: return True if not primary alignment
    print "is_secondary:", r.is_secondary

    # is_unmapped: return True if read itself is unmapped
    print "is_unmapped:", r.is_unmapped

    # mate_is_reverse: true it's mate is mapped to reverse strand
    print "mate_is_reverse:", r.mate_is_reverse

    # mate_is_unmapped: return True if the mate is unmapped
    print "mate_is_unmapped:", r.mate_is_unmapped

    # query_sequence: sequence of read
    print "query_sequence:", r.query_sequence

    # reference_start: position of the first aligned base of read
    print "reference_start:", r.reference_start
    # query_alignment_start: start index of the aligned query portion 
    # of the sequence (0-based, inclusive).
    # This the index of the first base in seq that is not soft-clipped.
    print "query_alignment_start:", r.query_alignment_start
    pass






