ATSHOMEQ="$(ATSHOME)"

ATSCC=$(ATSHOMEQ)/bin/atscc
ATSOPT=$(ATSHOMEQ)/bin/atsopt

ATSCCFLAGS=-O2 -flto

cleanall::

bns: bns.dats ; \
  $(ATSCC) $(ATSCCFLAGS) -o $@ $< || echo $@ ": ERROR!!!"
cleanall:: ; $(RMF) bns

RMF=rm -f

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.o
clean:: ; $(RMF) *_?ats.c

cleanall:: clean
