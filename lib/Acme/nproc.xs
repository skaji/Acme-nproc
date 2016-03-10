#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>
#include <unistd.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#include "ppport.h"

MODULE = Acme::nproc  PACKAGE = Acme::nproc

PROTOTYPES: DISABLE

void
nproc()
CODE:
{
  XPUSHs(sv_2mortal(newSViv(sysconf(_SC_NPROCESSORS_CONF))));
  XSRETURN(1);
}
