#!/usr/bin/env bash

# Download, extract
fetchUrl() {
dir="$1"
url="$2"
full="${url##*/}"
file="${full%%.*}"
dest="$dir/$file.mtx"
if [ ! -f "$dest" ]; then
  echo "Fetching $url ..."
  wget "$url"
  tar -xzf "$full"
  cp -r "$file"/* "$dir"/
  rm -rf "$file"
  rm -rf "$full"
fi
}

# Fetch from SuiteSparse Matrix collection
fetch() {
fetchUrl "$1" "https://suitesparse-collection-website.herokuapp.com/MM/$2.tar.gz"
}


# Download graphs
out="$HOME/Graphs"
mkdir -p $out/GAP
# fetch $out/GAP GAP/GAP-road
# fetch $out/GAP GAP/GAP-twitter
# fetch $out/GAP GAP/GAP-web
# fetch $out/GAP GAP/GAP-kron
# fetch $out/GAP GAP/GAP-urand

mkdir -p $out/LAW
# fetch $out/LAW LAW/cnr-2000
# fetch $out/LAW LAW/in-2004
# fetch $out/LAW LAW/eu-2005
# fetch $out/LAW LAW/enron
# fetch $out/LAW LAW/amazon-2008
# fetch $out/LAW LAW/ljournal-2008
# fetch $out/LAW LAW/hollywood-2009
# fetch $out/LAW LAW/dblp-2010
fetch $out/LAW LAW/webbase-2001
fetch $out/LAW LAW/uk-2002
fetch $out/LAW LAW/indochina-2004
fetch $out/LAW LAW/it-2004
fetch $out/LAW LAW/arabic-2005
fetch $out/LAW LAW/sk-2005
fetch $out/LAW LAW/uk-2005

mkdir -p $out/SNAP
# fetch $out/SNAP SNAP/soc-Epinions1
# fetch $out/SNAP SNAP/soc-LiveJournal1
# fetch $out/SNAP SNAP/soc-Slashdot0811
# fetch $out/SNAP SNAP/soc-Slashdot0902
# fetch $out/SNAP SNAP/wiki-Vote
# fetch $out/SNAP SNAP/email-EuAll
# fetch $out/SNAP SNAP/email-Enron
# fetch $out/SNAP SNAP/wiki-Talk
# fetch $out/SNAP SNAP/cit-HepPh
# fetch $out/SNAP SNAP/cit-HepTh
# fetch $out/SNAP SNAP/cit-Patents
# fetch $out/SNAP SNAP/ca-AstroPh
# fetch $out/SNAP SNAP/ca-CondMat
# fetch $out/SNAP SNAP/ca-GrQc
# fetch $out/SNAP SNAP/ca-HepPh
# fetch $out/SNAP SNAP/ca-HepTh
# fetch $out/SNAP SNAP/web-BerkStan
# fetch $out/SNAP SNAP/web-Google
# fetch $out/SNAP SNAP/web-NotreDame
# fetch $out/SNAP SNAP/web-Stanford
# fetch $out/SNAP SNAP/amazon0302
# fetch $out/SNAP SNAP/amazon0312
# fetch $out/SNAP SNAP/amazon0505
# fetch $out/SNAP SNAP/amazon0601
# fetch $out/SNAP SNAP/p2p-Gnutella04
# fetch $out/SNAP SNAP/p2p-Gnutella05
# fetch $out/SNAP SNAP/p2p-Gnutella06
# fetch $out/SNAP SNAP/p2p-Gnutella08
# fetch $out/SNAP SNAP/p2p-Gnutella09
# fetch $out/SNAP SNAP/p2p-Gnutella24
# fetch $out/SNAP SNAP/p2p-Gnutella25
# fetch $out/SNAP SNAP/p2p-Gnutella30
# fetch $out/SNAP SNAP/p2p-Gnutella31
# fetch $out/SNAP SNAP/roadNet-CA
# fetch $out/SNAP SNAP/roadNet-PA
# fetch $out/SNAP SNAP/roadNet-TX
# fetch $out/SNAP SNAP/as-735
# fetch $out/SNAP SNAP/as-Skitter
# fetch $out/SNAP SNAP/as-caida
# fetch $out/SNAP SNAP/Oregon-1
# fetch $out/SNAP SNAP/Oregon-2
# fetch $out/SNAP SNAP/soc-sign-epinions
# fetch $out/SNAP SNAP/soc-sign-Slashdot081106
# fetch $out/SNAP SNAP/soc-sign-Slashdot090216
# fetch $out/SNAP SNAP/soc-sign-Slashdot090221
# fetch $out/SNAP SNAP/CollegeMsg
# fetch $out/SNAP SNAP/com-Amazon
# fetch $out/SNAP SNAP/com-DBLP
# fetch $out/SNAP SNAP/com-Friendster
fetch $out/SNAP SNAP/com-LiveJournal
fetch $out/SNAP SNAP/com-Orkut
# fetch $out/SNAP SNAP/com-Youtube
# fetch $out/SNAP SNAP/email-Eu-core
# fetch $out/SNAP SNAP/email-Eu-core-temporal
# fetch $out/SNAP SNAP/higgs-twitter
# fetch $out/SNAP SNAP/loc-Brightkite
# fetch $out/SNAP SNAP/loc-Gowalla
# fetch $out/SNAP SNAP/soc-Pokec
# fetch $out/SNAP SNAP/soc-sign-bitcoin-alpha
# fetch $out/SNAP SNAP/soc-sign-bitcoin-otc
# fetch $out/SNAP SNAP/sx-askubuntu
# fetch $out/SNAP SNAP/sx-mathoverflow
# fetch $out/SNAP SNAP/sx-stackoverflow
# fetch $out/SNAP SNAP/sx-superuser
# fetch $out/SNAP SNAP/twitter7
# fetch $out/SNAP SNAP/wiki-RfA
# fetch $out/SNAP SNAP/wiki-talk-temporal
# fetch $out/SNAP SNAP/wiki-topcats

mkdir -p $out/DIMACS10
# fetch $out/DIMACS10 DIMACS10/caidaRouterLevel
# fetch $out/DIMACS10 DIMACS10/chesapeake
# fetch $out/DIMACS10 DIMACS10/road_central
# fetch $out/DIMACS10 DIMACS10/road_usa
# fetch $out/DIMACS10 DIMACS10/citationCiteseer
# fetch $out/DIMACS10 DIMACS10/coAuthorsCiteseer
# fetch $out/DIMACS10 DIMACS10/coAuthorsDBLP
# fetch $out/DIMACS10 DIMACS10/coPapersCiteseer
# fetch $out/DIMACS10 DIMACS10/coPapersDBLP
# fetch $out/DIMACS10 DIMACS10/delaunay_n10
# fetch $out/DIMACS10 DIMACS10/delaunay_n11
# fetch $out/DIMACS10 DIMACS10/delaunay_n12
# fetch $out/DIMACS10 DIMACS10/delaunay_n13
# fetch $out/DIMACS10 DIMACS10/delaunay_n14
# fetch $out/DIMACS10 DIMACS10/delaunay_n15
# fetch $out/DIMACS10 DIMACS10/delaunay_n16
# fetch $out/DIMACS10 DIMACS10/delaunay_n17
# fetch $out/DIMACS10 DIMACS10/delaunay_n18
# fetch $out/DIMACS10 DIMACS10/delaunay_n19
# fetch $out/DIMACS10 DIMACS10/delaunay_n20
# fetch $out/DIMACS10 DIMACS10/delaunay_n21
# fetch $out/DIMACS10 DIMACS10/delaunay_n22
# fetch $out/DIMACS10 DIMACS10/delaunay_n23
# fetch $out/DIMACS10 DIMACS10/delaunay_n24
# fetch $out/DIMACS10 DIMACS10/hugebubbles-00000
# fetch $out/DIMACS10 DIMACS10/hugebubbles-00010
# fetch $out/DIMACS10 DIMACS10/hugebubbles-00020
# fetch $out/DIMACS10 DIMACS10/hugetrace-00000
# fetch $out/DIMACS10 DIMACS10/hugetrace-00010
# fetch $out/DIMACS10 DIMACS10/hugetrace-00020
# fetch $out/DIMACS10 DIMACS10/hugetric-00000
# fetch $out/DIMACS10 DIMACS10/hugetric-00010
# fetch $out/DIMACS10 DIMACS10/hugetric-00020
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn16
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn17
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn18
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn19
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn20
# fetch $out/DIMACS10 DIMACS10/kron_g500-logn21
# fetch $out/DIMACS10 DIMACS10/adaptive
# fetch $out/DIMACS10 DIMACS10/channel-500x100x100-b050
# fetch $out/DIMACS10 DIMACS10/packing-500x100x100-b050
# fetch $out/DIMACS10 DIMACS10/venturiLevel3
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_15_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_16_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_17_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_18_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_19_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_20_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_21_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_22_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_23_s0
# fetch $out/DIMACS10 DIMACS10/rgg_n_2_24_s0
fetch $out/DIMACS10 DIMACS10/asia_osm
# fetch $out/DIMACS10 DIMACS10/belgium_osm
fetch $out/DIMACS10 DIMACS10/europe_osm
# fetch $out/DIMACS10 DIMACS10/germany_osm
# fetch $out/DIMACS10 DIMACS10/great-britain_osm
# fetch $out/DIMACS10 DIMACS10/italy_osm
# fetch $out/DIMACS10 DIMACS10/luxembourg_osm
# fetch $out/DIMACS10 DIMACS10/netherlands_osm
# fetch $out/DIMACS10 DIMACS10/144
# fetch $out/DIMACS10 DIMACS10/598a
# fetch $out/DIMACS10 DIMACS10/auto
# fetch $out/DIMACS10 DIMACS10/cs4
# fetch $out/DIMACS10 DIMACS10/cti
# fetch $out/DIMACS10 DIMACS10/data
# fetch $out/DIMACS10 DIMACS10/fe_4elt2
# fetch $out/DIMACS10 DIMACS10/fe_body
# fetch $out/DIMACS10 DIMACS10/fe_ocean
# fetch $out/DIMACS10 DIMACS10/fe_rotor
# fetch $out/DIMACS10 DIMACS10/fe_sphere
# fetch $out/DIMACS10 DIMACS10/fe_tooth
# fetch $out/DIMACS10 DIMACS10/m14b
# fetch $out/DIMACS10 DIMACS10/t60k
# fetch $out/DIMACS10 DIMACS10/uk
# fetch $out/DIMACS10 DIMACS10/wing
# fetch $out/DIMACS10 DIMACS10/wing_nodal
# fetch $out/DIMACS10 DIMACS10/G_n_pin_pout
# fetch $out/DIMACS10 DIMACS10/preferentialAttachment
# fetch $out/DIMACS10 DIMACS10/smallworld
# fetch $out/DIMACS10 DIMACS10/333SP
# fetch $out/DIMACS10 DIMACS10/AS365
# fetch $out/DIMACS10 DIMACS10/M6
# fetch $out/DIMACS10 DIMACS10/NACA0015
# fetch $out/DIMACS10 DIMACS10/NLR
# fetch $out/DIMACS10 DIMACS10/ak2010
# fetch $out/DIMACS10 DIMACS10/al2010
# fetch $out/DIMACS10 DIMACS10/ar2010
# fetch $out/DIMACS10 DIMACS10/az2010
# fetch $out/DIMACS10 DIMACS10/ca2010
# fetch $out/DIMACS10 DIMACS10/co2010
# fetch $out/DIMACS10 DIMACS10/ct2010
# fetch $out/DIMACS10 DIMACS10/de2010
# fetch $out/DIMACS10 DIMACS10/fl2010
# fetch $out/DIMACS10 DIMACS10/ga2010
# fetch $out/DIMACS10 DIMACS10/hi2010
# fetch $out/DIMACS10 DIMACS10/ia2010
# fetch $out/DIMACS10 DIMACS10/id2010
# fetch $out/DIMACS10 DIMACS10/il2010
# fetch $out/DIMACS10 DIMACS10/in2010
# fetch $out/DIMACS10 DIMACS10/ks2010
# fetch $out/DIMACS10 DIMACS10/ky2010
# fetch $out/DIMACS10 DIMACS10/la2010
# fetch $out/DIMACS10 DIMACS10/ma2010
# fetch $out/DIMACS10 DIMACS10/md2010
# fetch $out/DIMACS10 DIMACS10/me2010
# fetch $out/DIMACS10 DIMACS10/mi2010
# fetch $out/DIMACS10 DIMACS10/mn2010
# fetch $out/DIMACS10 DIMACS10/mo2010
# fetch $out/DIMACS10 DIMACS10/ms2010
# fetch $out/DIMACS10 DIMACS10/mt2010
# fetch $out/DIMACS10 DIMACS10/nc2010
# fetch $out/DIMACS10 DIMACS10/nd2010
# fetch $out/DIMACS10 DIMACS10/ne2010
# fetch $out/DIMACS10 DIMACS10/nh2010
# fetch $out/DIMACS10 DIMACS10/nj2010
# fetch $out/DIMACS10 DIMACS10/nm2010
# fetch $out/DIMACS10 DIMACS10/nv2010
# fetch $out/DIMACS10 DIMACS10/ny2010
# fetch $out/DIMACS10 DIMACS10/oh2010
# fetch $out/DIMACS10 DIMACS10/ok2010
# fetch $out/DIMACS10 DIMACS10/or2010
# fetch $out/DIMACS10 DIMACS10/pa2010
# fetch $out/DIMACS10 DIMACS10/ri2010
# fetch $out/DIMACS10 DIMACS10/sc2010
# fetch $out/DIMACS10 DIMACS10/sd2010
# fetch $out/DIMACS10 DIMACS10/tn2010
# fetch $out/DIMACS10 DIMACS10/tx2010
# fetch $out/DIMACS10 DIMACS10/ut2010
# fetch $out/DIMACS10 DIMACS10/va2010
# fetch $out/DIMACS10 DIMACS10/vt2010
# fetch $out/DIMACS10 DIMACS10/wa2010
# fetch $out/DIMACS10 DIMACS10/wi2010
# fetch $out/DIMACS10 DIMACS10/wv2010
# fetch $out/DIMACS10 DIMACS10/wy2010
# fetch $out/DIMACS10 DIMACS10/vsp_barth5_1Ksep_50in_5Kout
# fetch $out/DIMACS10 DIMACS10/vsp_bcsstk30_500sep_10in_1Kout
# fetch $out/DIMACS10 DIMACS10/vsp_befref_fxm_2_4_air02
# fetch $out/DIMACS10 DIMACS10/vsp_bump2_e18_aa01_model1_crew1
# fetch $out/DIMACS10 DIMACS10/vsp_c-30_data_data
# fetch $out/DIMACS10 DIMACS10/vsp_c-60_data_cti_cs4
# fetch $out/DIMACS10 DIMACS10/vsp_data_and_seymourl
# fetch $out/DIMACS10 DIMACS10/vsp_finan512_scagr7-2c_rlfddd
# fetch $out/DIMACS10 DIMACS10/vsp_mod2_pgp2_slptsk
# fetch $out/DIMACS10 DIMACS10/vsp_model1_crew1_cr42_south31
# fetch $out/DIMACS10 DIMACS10/vsp_msc10848_300sep_100in_1Kout
# fetch $out/DIMACS10 DIMACS10/vsp_p0291_seymourl_iiasa
# fetch $out/DIMACS10 DIMACS10/vsp_sctap1-2b_and_seymourl
# fetch $out/DIMACS10 DIMACS10/vsp_south31_slptsk
# fetch $out/DIMACS10 DIMACS10/vsp_vibrobox_scagr7-2c_rlfddd

mkdir -p $out/GenBank
fetch $out/GenBank GenBank/kmer_V1r
fetch $out/GenBank GenBank/kmer_A2a
# fetch $out/GenBank GenBank/kmer_P1a
# fetch $out/GenBank GenBank/kmer_U1a
# fetch $out/GenBank GenBank/kmer_V2a
