#include <iostream>
#include <vector>

#include <BamReader.h>
#include <BamAux.h>
#include <BamAlignment.h>

/*
* For more attributes and function of one aligned read, please visit
* http://pezmaster31.github.io/bamtools/struct_bam_tools_1_1_bam_alignment.html
* for more detail
*/

int main(int argc, char* argv[])
{
    BamTools::BamReader bw;
    BamTools::BamAlignment r;

    //open BAM file for reading
    if(!bw.Open(argv[1])){
        std::cout << "Failed to open file" << std::endl;
        exit(1);
    }

	//set the intersted region
	//ex: chr22:16050199-16050300
	//chromosomes were encoded from 0 to 23, which 0 represent chr1
	BamTools::BamRegion reg(21,16050199, 21, 16050300);

	//set region for reader
	bw.SetRegion(reg);

    //collect all the alignment in interested region
    while(bw.GetNextAlignment(r)){
        //Name: read name std::string
        std::cout << r.Name << std::endl;

        //Position: position of first aligned based
		std::cout << r.Position << std::endl;

		//RefID: Get chromosome ID int32_t
		std::cout << r.RefID << std::endl;

		//CigarData: CIGAR operations for this alignment. 
		std::vector<BamTools::CigarOp> cigar_d;
		cigar_d = r.CigarData;
		
		//iterate this cigar data
		/*
		 * CIGAR in SAM/BAM Description 
		 * M 0 alignment match (can be a sequence match or mismatch)
		 * I 1 insertion to the reference 
		 * D 2 deletion from the reference 
		 * N 3 skipped region from the reference 
		 * S 4 soft clipping (clipped sequences present in SEQ) 
		 * H 5 hard clipping (clipped sequences NOT present in SEQ) 
		 * P 6 padding (silent deletion from padded reference) 
		 * = 7 sequence match 
		 * X 8 sequence mismatch
		 */
		for(int i = 0; i < cigar_d.size(); i++){
			std::cout << "Type: " << cigar_d[i].Type << " ";
			std::cout << "Length: " << cigar_d[i].Length << std::endl;
		}

		/*
		 * For more attributes and function of one aligned read, please visit
		 * http://pezmaster31.github.io/bamtools/struct_bam_tools_1_1_bam_alignment.html
		 * for more detail
		 */

        break;
    }
    return 0;
}
