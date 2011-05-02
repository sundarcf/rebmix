#ifdef __cplusplus /* If this is a C++ compiler, use C linkage. */
extern "C" {
#endif

#ifndef RNGMIXF_H_INCLUDED
#define RNGMIXF_H_INCLUDED

#include "rebmixf.h"

#ifndef IA
#define IA 16807
#endif

#ifndef IM
#define IM 2147483647
#endif

#ifndef AM
#define AM (FLOAT)(1.0 / IM)
#endif

#ifndef IQ
#define IQ 127773
#endif

#ifndef IR
#define IR 2836
#endif

#ifndef NTAB
#define NTAB 32
#endif

#ifndef NDIV
#define NDIV (1 + (IM - 1) / NTAB)
#endif

#ifndef RNMX
#define RNMX (FLOAT)(1.0 - 1.2E-7)
#endif

typedef struct inputrngmixparametertype {
    char                     *curr;     /* Path to the currently open data file. */
    int                      o;         /* Number of paths. */ 
    char                     **open;    /* Paths to open data files. */
    int                      IDum;      /* Random seed. */
    int                      d;         /* Number of independent random variables. */ 
    int                      c;         /* Number of components. */ 
    int                      *n;        /* Total number of observations in class l. */
    MarginalDistributionType **Theta;   /* Marginal distribution type. */
    char                     *save;     /* Path to the save data file. */
} InputRNGMIXParameterType;

#if (_REBMIXDLL)
/* Writes input parameters into the file stream. */

int WriteRNGMIXParameterFile(InputRNGMIXParameterType InpParType); /* Input parameters. */ 
#endif

/* Returns random sample of independent observations. */

int RNGMIX(InputRNGMIXParameterType InpParType); /* Input parameters. */

/* Runs RNGMIX template file stream. */

int RunRNGMIXTemplateFile(char *file); /* File stream. */

#endif

#ifdef __cplusplus /* If this is a C++ compiler, end C linkage. */
}
#endif
