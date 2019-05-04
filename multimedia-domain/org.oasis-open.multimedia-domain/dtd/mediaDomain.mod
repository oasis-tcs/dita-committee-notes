<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Multimedia Domain                            -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      August 2017                                       -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
      PUBLIC "-//OASIS//ELEMENTS DITA 1.3 Media Domain//EN"
      Delivered as file "mediaDomain.mod"                          -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Defining the elements and specialization          -->
<!--             attributes for the multimedia domain              -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             August 2017                                       -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2017, 2019               -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    17 Aug 2017  CN: Original creation                         -->
<!--    04 May 2019 KJE: Updated headers                           -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % audio "audio">
<!ENTITY % video "video">
<!ENTITY % video-poster "video-poster">
<!ENTITY % media-controls "media-controls">
<!ENTITY % media-autoplay "media-autoplay">
<!ENTITY % media-loop "media-loop">
<!ENTITY % media-muted "media-muted">
<!ENTITY % media-source "media-source">
<!ENTITY % media-track "media-track">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % mediaConfigCommon
    "(%media-controls;)?,
     (%media-autoplay;)?,
     (%media-loop;)?,
     (%media-muted;)?,
     (%media-source;)*,
     (%media-track;)*"
>

<!--                    LONG NAME: Audio                           -->
<!ENTITY % audio.content
                       "((%desc;)?,
                         (%longdescref;)?,
                         (%mediaConfigCommon;),
                         (%param;)*,
                         (%foreign.unknown.incl;)*)"
>
<!ENTITY % audio.attributes
              "data
                          CDATA
                                    #IMPLIED
               datakeyref
                          CDATA
                                    #IMPLIED
               longdescref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT audio %audio.content;>
<!ATTLIST audio %audio.attributes;>

<!--                    LONG NAME: Video                           -->
<!ENTITY % video.content
                       "((%desc;)?,
                         (%longdescref;)?,
                         (%video-poster;)?,
                         (%mediaConfigCommon;),
                         (%param;)*,
                         (%foreign.unknown.incl;)*)"
>
<!ENTITY % video.attributes
              "data
                          CDATA
                                    #IMPLIED
               datakeyref
                          CDATA
                                    #IMPLIED
               longdescref
                          CDATA
                                    #IMPLIED
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT video %video.content;>
<!ATTLIST video %video.attributes;>

<!--                    LONG NAME: Video Poster                    -->
<!ENTITY % video-poster.content "EMPTY">
<!ENTITY % video-poster.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'poster'
               value
                          CDATA
                                    #IMPLIED
               valuetype
                          (ref)
                                    #FIXED 'ref'
               type
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT video-poster %video-poster.content;>
<!ATTLIST video-poster %video-poster.attributes;>

<!--                    LONG NAME: Media Controls                  -->
<!ENTITY % media-controls.content "EMPTY">
<!ENTITY % media-controls.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'controls'
               value
                          (true|false|-dita-use-conref-target)
                                    #IMPLIED"
>
<!ELEMENT media-controls %media-controls.content;>
<!ATTLIST media-controls %media-controls.attributes;>

<!--                    LONG NAME: Media Autoplay                  -->
<!ENTITY % media-autoplay.content "EMPTY">
<!ENTITY % media-autoplay.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'autoplay'
               value
                          (true|false|-dita-use-conref-target)
                                    #IMPLIED"
>
<!ELEMENT media-autoplay %media-autoplay.content;>
<!ATTLIST media-autoplay %media-autoplay.attributes;>

<!--                    LONG NAME: Media Loop                      -->
<!ENTITY % media-loop.content "EMPTY">
<!ENTITY % media-loop.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'loop'
               value
                          (true|false|-dita-use-conref-target)
                                    #IMPLIED"
>
<!ELEMENT media-loop %media-loop.content;>
<!ATTLIST media-loop %media-loop.attributes;>

<!--                    LONG NAME: Media Muted                     -->
<!ENTITY % media-muted.content "EMPTY">
<!ENTITY % media-muted.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'muted'
               value
                          (true|false|-dita-use-conref-target)
                                    #IMPLIED"
>
<!ELEMENT media-muted %media-muted.content;>
<!ATTLIST media-muted %media-muted.attributes;>

<!--                    LONG NAME: Media Source                    -->
<!ENTITY % media-source.content "EMPTY">
<!ENTITY % media-source.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'source'
               value
                          CDATA
                                    #IMPLIED
               valuetype
                          (ref)
                                    #FIXED 'ref'
               type
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT media-source %media-source.content;>
<!ATTLIST media-source %media-source.attributes;>

<!--                    LONG NAME: Media Track                     -->
<!ENTITY % media-track.content "EMPTY">
<!ENTITY % media-track.attributes
              "%univ-atts;
               name
                          CDATA
                                    #FIXED 'track'
               value
                          CDATA
                                    #IMPLIED
               valuetype
                          (ref)
                                    #FIXED 'ref'
               type
                          (subtitles |
                           captions |
                           descriptions |
                           chapters |
                           metadata |
                           -dita-use-conref-target)
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT media-track %media-track.content;>
<!ATTLIST media-track %media-track.attributes;>

<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  video          %global-atts;  class CDATA "+ topic/object media-d/video "         >
<!ATTLIST  audio          %global-atts;  class CDATA "+ topic/object media-d/audio "         >
<!ATTLIST  video-poster   %global-atts;  class CDATA "+ topic/param media-d/video-poster "   >
<!ATTLIST  media-controls %global-atts;  class CDATA "+ topic/param media-d/media-controls " >
<!ATTLIST  media-autoplay %global-atts;  class CDATA "+ topic/param media-d/media-autoplay " >
<!ATTLIST  media-loop     %global-atts;  class CDATA "+ topic/param media-d/media-loop "     >
<!ATTLIST  media-muted    %global-atts;  class CDATA "+ topic/param media-d/media-muted "    >
<!ATTLIST  media-source   %global-atts;  class CDATA "+ topic/param media-d/media-source "   >
<!ATTLIST  media-track    %global-atts;  class CDATA "+ topic/param media-d/media-track "    >

<!-- ================= End Multimedia Domain Elements ============ -->