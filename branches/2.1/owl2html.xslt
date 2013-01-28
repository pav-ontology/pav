<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:dct="http://purl.org/dc/terms/"
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
>

<xsl:template match="/">
  <html>
  <body>
  <h1><xsl:value-of select="rdf:RDF/owl:Ontology/dct:title"/></h1>
  <h2>OWL ontology</h2>
   <dl>
    <dt>Ontology IRI</dt>
    <dd><xsl:value-of select="rdf:RDF/owl:Ontology/@rdf:about"/></dd>

    <dt>Version IRI</dt>
    <dd><xsl:value-of select="rdf:RDF/owl:Ontology/owl:versionIRI/@rdf:resource"/></dd>
    
    <dt>Creator</dt>
    <xsl:for-each select="//dc:creator">
       <dd><xsl:value-of select="." /></dd>
    </xsl:for-each>

    <dt>Contributors</dt>
    <xsl:for-each select="//dc:contributor">
       <dd><xsl:value-of select="." /></dd>
    </xsl:for-each>
    
    <dt>Issued</dt>
    <xsl:for-each select="//dct:issued">
       <dd><xsl:value-of select="." /></dd>
    </xsl:for-each>

    <dt>Last modified</dt>
    <xsl:for-each select="//dct:modified">
       <dd><xsl:value-of select="." /></dd>
    </xsl:for-each>    
  
   </dl>
   <p>Please see the <a href="prov.html">documentation for 
<xsl:value-of select="rdf:RDF/owl:Ontology/dct:title"/>
</a>.</p>

   <p>This HTML is meant to show a simple browser introduction to the ontology and has been 
automatically created using XSLT. To see the
      source OWL as RDF/XML, either use "Save As" or "View Source".
   </p>
  
  <h3>Defined object properties</h3>
  <dl>
    <xsl:for-each select="//owl:ObjectProperty">
       <dt>
           <em><xsl:value-of select="rdfs:label" /></em>

           <code><xsl:value-of select="@rdf:about" /></code>
      </dt>
       <dd><small><xsl:value-of select="rdfs:comment" /></small></dd>
    </xsl:for-each>
  </dl>


  <h3>Defined data type properties</h3>
  <dl>
    <xsl:for-each select="//owl:DatatypeProperty">
       <dt><code><xsl:value-of select="@rdf:about" /></code> &nbsp; 
           <em><xsl:value-of select="rdfs:label" /></em></dt>
       <dd><small><xsl:value-of select="rdfs:comment" /></small></dd>
    </xsl:for-each>
  </dl>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

