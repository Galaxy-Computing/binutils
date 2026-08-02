[1mdiff --git a/bfd/config.bfd b/bfd/config.bfd[m
[1mindex 4e5a838fe4e..d04baecdf8e 100644[m
[1m--- a/bfd/config.bfd[m
[1m+++ b/bfd/config.bfd[m
[36m@@ -744,6 +744,10 @@[m [mcase "${targ}" in[m
     targ_defvec=i386_elf32_vec[m
     targ_selvecs=iamcu_elf32_vec[m
     ;;[m
[32m+[m[32m  i[3-7]86-*-galaxyos*)[m
[32m+[m[32m    targ_defvec=i386_elf32_vec[m
[32m+[m[32m    targ_selvecs=[m
[32m+[m[32m    ;;[m
   i[3-7]86-*-msdos*)[m
     targ_defvec=i386_aout_vec[m
     targ_selvecs=i386_msdos_vec[m
[1mdiff --git a/config.sub b/config.sub[m
[1mindex 4aaae46f6f7..068a828ab98 100755[m
[1m--- a/config.sub[m
[1m+++ b/config.sub[m
[36m@@ -2007,6 +2007,7 @@[m [mcase $os in[m
 	| fiwix* \[m
 	| freebsd* \[m
 	| fuchsia* \[m
[32m+[m	[32m| galaxyos* \[m
 	| genix* \[m
 	| genode* \[m
 	| glidix* \[m
[1mdiff --git a/gas/configure.tgt b/gas/configure.tgt[m
[1mindex 7c81bffa16b..d277e443ec5 100644[m
[1m--- a/gas/configure.tgt[m
[1m+++ b/gas/configure.tgt[m
[36m@@ -249,6 +249,7 @@[m [mcase ${generic_target} in[m
   i386-*-msdosdjgpp* \[m
   | i386-*-go32*)			fmt=coff em=go32 ;;[m
   i386-*-gnu*)				fmt=elf em=gnu ;;[m
[32m+[m[32m  i386-*-galaxyos*)			fmt=elf em=gnu ;;[m
   i386-*-msdos*)			fmt=aout ;;[m
   i386-*-moss*)				fmt=elf ;;[m
   i386-*-pe)				fmt=coff em=pe ;;[m
[1mdiff --git a/ld/configure.tgt b/ld/configure.tgt[m
[1mindex ea01ccf9a1b..71629fb3114 100644[m
[1m--- a/ld/configure.tgt[m
[1m+++ b/ld/configure.tgt[m
[36m@@ -413,6 +413,10 @@[m [mi[3-7]86-*-freebsd* | i[3-7]86-*-kfreebsd*-gnu)[m
 			targ_emul=elf_i386_fbsd[m
 			targ_extra_emuls="elf_i386 elf_iamcu i386bsd"[m
 			;;[m
[32m+[m[32mi[3-7]86-*-galaxyos*)[m
[32m+[m			[32mtarg_emul=elf_i386_myos[m
[32m+[m			[32mtarg_extra_emuls=elf_i386[m
[32m+[m			[32m;;[m
 i[3-7]86-*-gnu*)	targ_emul=elf_i386[m
 			targ_extra_emuls=elf_iamcu[m
 			;;[m
