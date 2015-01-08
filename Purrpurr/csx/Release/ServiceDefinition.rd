<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Purrpurr" generation="1" functional="0" release="0" Id="2a11d12c-3fa7-406a-83c3-3aa8282436de" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="PurrpurrGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="knockknock.readify.net:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Purrpurr/PurrpurrGroup/LB:knockknock.readify.net:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="knockknock.readify.netInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Purrpurr/PurrpurrGroup/Mapknockknock.readify.netInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:knockknock.readify.net:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.net/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapknockknock.readify.netInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.netInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="knockknock.readify.net" generation="1" functional="0" release="0" software="C:\Users\melcec\Documents\Visual Studio 2013\Projects\MeowMeow\Purrpurr\csx\Release\roles\knockknock.readify.net" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;knockknock.readify.net&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;knockknock.readify.net&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.netInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.netUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.netFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="knockknock.readify.netUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="knockknock.readify.netFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="knockknock.readify.netInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="56948532-b9a9-4870-87a6-4403cf215a22" ref="Microsoft.RedDog.Contract\ServiceContract\PurrpurrContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="8f58d72b-41a6-4917-b6fa-718c265a4743" ref="Microsoft.RedDog.Contract\Interface\knockknock.readify.net:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.net:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>