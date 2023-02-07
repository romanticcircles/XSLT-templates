<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:html="http://www.w3.org/1999/xhtml"
  
  xmlns:rng="http://relaxng.org/ns/structure/1.0"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns:teix="http://www.tei-c.org/ns/Examples"
  
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="a fo rng tei teix"
  version="2.0">
  <doc xmlns="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet" type="stylesheet">
    <desc>
      <p> TEI stylesheet dealing with elements from the namesdates module,
        making HTML output. </p>
      <p>This software is dual-licensed:
        
        1. Distributed under a Creative Commons Attribution-ShareAlike 3.0
        Unported License http://creativecommons.org/licenses/by-sa/3.0/ 
        
        2. http://www.opensource.org/licenses/BSD-2-Clause
        
        
        
        Redistribution and use in source and binary forms, with or without
        modification, are permitted provided that the following conditions are
        met:
        
        * Redistributions of source code must retain the above copyright
        notice, this list of conditions and the following disclaimer.
        
        * Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.
        
        This software is provided by the copyright holders and contributors
        "as is" and any express or implied warranties, including, but not
        limited to, the implied warranties of merchantability and fitness for
        a particular purpose are disclaimed. In no event shall the copyright
        holder or contributors be liable for any direct, indirect, incidental,
        special, exemplary, or consequential damages (including, but not
        limited to, procurement of substitute goods or services; loss of use,
        data, or profits; or business interruption) however caused and on any
        theory of liability, whether in contract, strict liability, or tort
        (including negligence or otherwise) arising in any way out of the use
        of this software, even if advised of the possibility of such damage.
      </p>
      <p>Author: See AUTHORS</p>
      
      <p>Copyright: 2013, TEI Consortium</p>
    </desc>
  </doc>
  <!-- People -->
  <xsl:template match="tei:listPerson">
    <div class="listPerson">
      <xsl:apply-templates/>
    </div>
  </xsl:template>  
  
  <xsl:template match="tei:person">
    <div>
      <xsl:attribute name="class">
        <xsl:value-of select="@n"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </div>
  </xsl:template> 
  
  
  <xsl:template match="tei:person/tei:persName">
    <h4>
      <xsl:attribute name="class">
        <xsl:value-of select="@xml:id"/>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </h4>
  </xsl:template>
  
  <xsl:template match="tei:person/tei:note[@type='bio']">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="tei:affiliation">
    <div class="affiliation">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!-- Places -->
  <xsl:template match="tei:listPlace">
    <div class="listPlace">
      <xsl:apply-templates/>
    </div>
  </xsl:template>  
  
  <xsl:template match="tei:place">
    <div>
      <xsl:apply-templates/>
    </div>
  </xsl:template> 
  
  <xsl:template match="tei:place/tei:placeName">
    <h4>
      <xsl:attribute name="class">
        <xsl:value-of select="@xml:id"/>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </h4>
  </xsl:template>
  
  <xsl:template match="tei:place/tei:location/tei:desc">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  <xsl:template match="tei:place/tei:location/tei:geo">
    <div class="coordinates">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
</xsl:stylesheet>