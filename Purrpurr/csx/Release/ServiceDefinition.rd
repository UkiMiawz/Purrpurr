<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Purrpurr" generation="1" functional="0" release="0" Id="f52c530a-3d40-48fe-99e8-5ddff11ba7f4" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
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
          <role name="knockknock.readify.net" generation="1" functional="0" release="0" software="D:\Projects\Bapet\RedPill\Purrpurr\csx\Release\roles\knockknock.readify.net" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
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
    <implementation Id="1e4e5f3c-74c0-4b26-b9ac-41aeb406acec" ref="Microsoft.RedDog.Contract\ServiceContract\PurrpurrContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="da7e6fe3-a69d-4a0d-a16c-733a83f1fe6d" ref="Microsoft.RedDog.Contract\Interface\knockknock.readify.net:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Purrpurr/PurrpurrGroup/knockknock.readify.net:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>