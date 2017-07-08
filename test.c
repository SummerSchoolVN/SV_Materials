#include <stdio.h>
#include <string.h>

#include "bam.h"

/* for more attributes and function of one aligned read
 * please visit http://samtools.sourceforge.net/samtools/bam/CompositePage.html
 * and https://github.com/lh3/samtools/blob/master/bam.h
 * Thanks.
 */

int main(int argc, char* argv[])
{
	/* open BAM file, argv[1] == /path/to/file.bam
	 * and loading index
	 */
	bamFile *bam_f = bam_open(argv[1], "r");
	bam_index_t *b_idx = bam_index_load(argv[1]);

	//fetching a region
	int chr = atoi(argv[2]);
	int start = atoi(argv[3]);
	int end = atoi(argv[4]);
	int ret;
	
	bam_iter_t iter; //bam file iterator
	bam1_t *b; // alignment structure
	b = bam_init1();
	iter = bam_iter_query(b_idx, chr, start, end); //set the iterator for region
	while((ret = bam_iter_read(bam_f, iter, b)) >= 0 )
	{
		/* 
		 * DO YOUR STUFF WITH ONE ALIGNED READ HERE
		 * BELOW ARE SOME EXAMPLE STUFFS
		 */
		//position of aligned read
		printf("pos: %d\n", b->core.pos);

		//position of mate of current read
		printf("mate pos: %d\n", b->core.mpos);

		//get the cigar array
		printf("cigar: ");
		uint32_t *cigar = bam1_cigar(b);
		for(int i = 0; i < b->core.n_cigar; i++){
			char c = bam_cigar_opchr(cigar[i]);
			int len = bam_cigar_oplen(cigar[i]);
			printf("%d%s", len, &c);
		}
		printf("\n");
	}
	bam_iter_destroy(iter);
	bam_destroy1(b); 
	return(ret == -1 )? 0 : ret;
}
