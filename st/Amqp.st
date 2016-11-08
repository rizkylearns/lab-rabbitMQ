<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.9.1 of 18 October 2012 on 8 November 2016 at 10:43:41 AM</time-stamp>


<component-created>
<name>Amqp</name> <type>package</type>
</component-created><!-- Package Amqp* -->


<class>
<name>AmqpChannelHandler</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>connection channelNumber inbound state closeReason asyncMap currentCommand remainingBytes bodyPieces </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpCodec</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>stream </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpCommand</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>method properties body </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpConnection</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>socket codec credentials parameters virtualHost isOpen closeReason channels nextChannel protocolClass </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpConnectionParameters</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>channelMax frameMax heartbeat </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpEntityDefinition</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name xml index </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpClassDefinition</name>
<environment>Smalltalk</environment>
<super>AmqpEntityDefinition</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>methods contentProperties </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpFieldDefinition</name>
<environment>Smalltalk</environment>
<super>AmqpEntityDefinition</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>container domain reserved </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpMethodDefinition</name>
<environment>Smalltalk</environment>
<super>AmqpEntityDefinition</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>classDef fields hasContents serverMethod clientMethod synchronous responses </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpFrame</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>frameType channelNumber </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpContentBodyFrame</name>
<environment>Smalltalk</environment>
<super>AmqpFrame</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>fragment </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpContentHeaderFrame</name>
<environment>Smalltalk</environment>
<super>AmqpFrame</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>classId bodySize properties </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpHeartbeatFrame</name>
<environment>Smalltalk</environment>
<super>AmqpFrame</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpMethodFrame</name>
<environment>Smalltalk</environment>
<super>AmqpFrame</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>methodId method </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocolHeaderFrame</name>
<environment>Smalltalk</environment>
<super>AmqpFrame</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>majorVersion minorVersion revision transportVersion isObsoleteProtocolVariant </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpPlainCredentials</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>username password </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocol</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars>classIds methodIds </class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-Base</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08</name>
<environment>Smalltalk</environment>
<super>AmqpProtocol</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091</name>
<environment>Smalltalk</environment>
<super>AmqpProtocol</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocolMethod</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-Base</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08AccessRequest</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>realm exclusive passive active write read </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08AccessRequestOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicAck</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag multiple </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicCancel</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicCancelOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicConsume</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue consumerTag noLocal noAck exclusive nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicConsumeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicDeliver</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag deliveryTag redelivered exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicGet</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue noAck </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicGetEmpty</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>clusterId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicGetOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag redelivered exchange routingKey messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicPublish</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket exchange routingKey mandatory immediate </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicQos</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>prefetchSize prefetchCount global </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicQosOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicRecover</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicReject</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicReturn</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelAlert</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText details </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelClose</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText classId methodId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelCloseOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelFlow</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>active </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelFlowOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>active </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelOpen</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>outOfBand </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ChannelOpenOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionClose</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText classId methodId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionCloseOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionOpen</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>virtualHost capabilities insist </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionOpenOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>knownHosts </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionRedirect</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>host knownHosts </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionSecure</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>challenge </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionSecureOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>response </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionStart</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>versionMajor versionMinor serverProperties mechanisms locales </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionStartOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>clientProperties mechanism response locale </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionTune</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>channelMax frameMax heartbeat </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ConnectionTuneOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>channelMax frameMax heartbeat </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08DtxSelect</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08DtxSelectOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08DtxStart</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>dtxIdentifier </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08DtxStartOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ExchangeDeclare</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket exchange type passive durable autoDelete internal nowait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ExchangeDeclareOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ExchangeDelete</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket exchange ifUnused nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08ExchangeDeleteOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileAck</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag multiple </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileCancel</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileCancelOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileConsume</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue consumerTag noLocal noAck exclusive nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileConsumeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileDeliver</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag deliveryTag redelivered exchange routingKey identifier </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileOpen</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>identifier contentSize </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileOpenOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>stagedSize </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FilePublish</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket exchange routingKey mandatory immediate identifier </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileQos</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>prefetchSize prefetchCount global </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileQosOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileReject</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileReturn</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileStage</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueBind</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue exchange routingKey nowait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueBindOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueDeclare</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue passive durable exclusive autoDelete nowait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueDeclareOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue messageCount consumerCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueDelete</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue ifUnused ifEmpty nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueueDeleteOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueuePurge</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08QueuePurgeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamCancel</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamCancelOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamConsume</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket queue consumerTag noLocal exclusive nowait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamConsumeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamDeliver</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag deliveryTag exchange queue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamPublish</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ticket exchange routingKey mandatory immediate </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamQos</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>prefetchSize prefetchCount consumeRate global </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamQosOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamReturn</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestContent</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestContentOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>contentChecksum </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestInteger</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>integer1 integer2 integer3 integer4 operation </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestIntegerOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>result </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestString</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>string1 string2 operation </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestStringOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>result </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestTable</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>table integerOp stringOp </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TestTableOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>integerResult stringResult </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TunnelRequest</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>metaData </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxCommit</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxCommitOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxRollback</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxRollbackOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxSelect</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TxSelectOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicAck</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag multiple </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicCancel</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag noWait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicCancelOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicConsume</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue consumerTag noLocal noAck exclusive noWait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicConsumeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicDeliver</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>consumerTag deliveryTag redelivered exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicGet</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue noAck </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicGetEmpty</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicGetOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag redelivered exchange routingKey messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicPublish</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>exchange routingKey mandatory immediate </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicQos</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>prefetchSize prefetchCount global </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicQosOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicRecover</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicRecoverAsync</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicRecoverOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicReject</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>deliveryTag requeue </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicReturn</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText exchange routingKey </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelClose</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText classId methodId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelCloseOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelFlow</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>active </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelFlowOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>active </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelOpen</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ChannelOpenOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionClose</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>replyCode replyText classId methodId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionCloseOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionOpen</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>virtualHost </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionOpenOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionSecure</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>challenge </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionSecureOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>response </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionStart</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>versionMajor versionMinor serverProperties mechanisms locales </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionStartOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>clientProperties mechanism response locale </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionTune</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>channelMax frameMax heartbeat </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ConnectionTuneOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>channelMax frameMax heartbeat </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ExchangeDeclare</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>exchange type passive durable noWait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ExchangeDeclareOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ExchangeDelete</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>exchange ifUnused noWait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091ExchangeDeleteOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueBind</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue exchange routingKey noWait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueBindOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueDeclare</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue passive durable exclusive autoDelete noWait arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueDeclareOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue messageCount consumerCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueDelete</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue ifUnused ifEmpty noWait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueDeleteOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueuePurge</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue noWait </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueuePurgeOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>messageCount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueUnbind</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>queue exchange routingKey arguments </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091QueueUnbindOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxCommit</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxCommitOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxRollback</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxRollbackOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxSelect</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091TxSelectOk</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolMethod</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocolProperties</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-Base</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08BasicProperties</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolProperties</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>contentType contentEncoding headers deliveryMode priority correlationId replyTo expiration messageId timestamp type userId appId clusterId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08FileProperties</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolProperties</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>contentType contentEncoding headers priority replyTo messageId filename timestamp clusterId </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08StreamProperties</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolProperties</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>contentType contentEncoding headers priority timestamp </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp08TunnelProperties</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolProperties</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>headers proxyName dataName durable broadcast </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-08</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>Amqp091BasicProperties</name>
<environment>Smalltalk</environment>
<super>AmqpProtocolProperties</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>contentType contentEncoding headers deliveryMode priority correlationId replyTo expiration messageId timestamp type userId appId reserved </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol-091</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpSpecCompiler</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>spec prefix definitionCategory </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpSpecification</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>classDefinitions domains majorVersion minorVersion revision constants portNumber </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Tools</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpError</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpDisconnectedError</name>
<environment>Smalltalk</environment>
<super>AmqpError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocolMismatchError</name>
<environment>Smalltalk</environment>
<super>AmqpError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>serverProtocolHeader </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpProtocolSyntaxError</name>
<environment>Smalltalk</environment>
<super>AmqpError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpResourceError</name>
<environment>Smalltalk</environment>
<super>AmqpError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<class>
<name>AmqpChannel</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>handler callbacks protocolClass </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Amqp-Protocol</category>
<attributes>
<package>Amqp</package>
</attributes>
</class>

<methods>
<class-id>AmqpChannelHandler</class-id> <category>accessing</category>

<body package="Amqp">mapEvent: evtClass to: receiver selector: aSymbol		asyncMap		at: evtClass		put: receiver -&gt; aSymbol</body>

<body package="Amqp">ensureOpen		closeReason notNil		ifTrue: [AmqpDisconnectedError signal: 'Channel closed']</body>

<body package="Amqp">connection		^connection</body>

<body package="Amqp">handleMethodFrame: frame		(frame isKindOf: AmqpMethodFrame)		ifFalse: [AmqpProtocolSyntaxError signal: 'Unexpected frame kind'].	currentCommand := AmqpCommand new.	currentCommand method: frame method.	frame method hasContents		ifTrue: [state := #handlePropertiesFrame:]		ifFalse: [self dispatchCommand]</body>

<body package="Amqp">resetState		state := #handleMethodFrame:.	currentCommand := nil.	remainingBytes := 0.	bodyPieces := nil</body>

<body package="Amqp">waitForReply: acceptableReplies		| i |	acceptableReplies ifNil: [^nil].	acceptableReplies ifEmpty: [^nil].	i := 1.	[[i &gt; inbound size]		whileTrue:			[self ensureOpen.			connection mainLoopCycle].	[i &lt;= inbound size]		whileTrue:			[| cmd |			cmd := inbound at: i.			(acceptableReplies includes: cmd method class)				ifTrue:					[inbound removeAt: i.					^cmd].			i := i + 1]] repeat</body>

<body package="Amqp">dispatchCommand		(asyncMap includesKey: currentCommand method class)		ifTrue:			[| a |			a := asyncMap at: currentCommand method class.			a key				perform: a value				with: currentCommand]		ifFalse: [inbound add: currentCommand].	self resetState</body>

<body package="Amqp">closeReason		^closeReason</body>

<body package="Amqp">connection: anObject		connection := anObject.	channelNumber := connection nextChannel.	connection setChannel: channelNumber to: self</body>

<body package="Amqp">handleBodyFrame: frame		(frame isKindOf: AmqpContentBodyFrame)		ifFalse: [AmqpProtocolSyntaxError signal: 'Unexpected frame kind'].	remainingBytes := remainingBytes - frame fragment size.	bodyPieces nextPutAll: frame fragment.	self checkBodyCompletion</body>

<body package="Amqp">handleFrame: frame		self perform: state with: frame</body>

<body package="Amqp">channelNumber		^channelNumber</body>

<body package="Amqp">checkBodyCompletion		remainingBytes &gt; 0		ifTrue: [state := #handleBodyFrame:]		ifFalse:			[remainingBytes &lt; 0				ifTrue: [AmqpProtocolSyntaxError signal: 'Received body overrun'].			currentCommand body: bodyPieces contents.			self dispatchCommand]</body>

<body package="Amqp">handlePropertiesFrame: frame		(frame isKindOf: AmqpContentHeaderFrame)		ifFalse: [AmqpProtocolSyntaxError signal: 'Unexpected frame kind'].	currentCommand properties: frame properties.	remainingBytes := frame bodySize.	bodyPieces := WriteStream on: ByteArray new.	self checkBodyCompletion</body>

<body package="Amqp">initialize		super initialize.	asyncMap := Dictionary new.	closeReason := nil.	inbound := OrderedCollection new.	self resetState</body>
</methods>

<methods>
<class-id>AmqpChannelHandler</class-id> <category>as yet unclassified</category>

<body package="Amqp">internalClose: method		closeReason		ifNil:			[closeReason := method.			connection resetChannel: channelNumber.			self changed: #channelHandlerClosed]</body>

<body package="Amqp">rpc: requestMethod		^connection rpc: requestMethod onChannel: channelNumber</body>
</methods>


<methods>
<class-id>AmqpCodec</class-id> <category>accessing</category>

<body package="Amqp">stream: anObject		stream := anObject</body>

<body package="Amqp">stream		^stream</body>
</methods>

<methods>
<class-id>AmqpCodec</class-id> <category>as yet unclassified</category>

<body package="Amqp">nextTimestampPut: v		v		ifNil:			[self nextLonglongPut: 0.			^v].	self nextLonglongPut: (v - (DateAndTime year: 1970 day: 1)) asSeconds.	^v</body>

<body package="Amqp">nextBoolean		^self nextOctet bitAnd: 1</body>

<body package="Amqp">nextTablePut: d		| s |	d		ifNil:			[self nextLongPut: 0.			^d].	s := WriteStream on: ByteArray new.	self		withStream: s		during:			[d				keysAndValuesDo:					[:key :val | 					self nextShortstrPut: key.					self nextTableValuePut: val]].	self nextLongstrPut: s contents.	^d</body>

<body package="Amqp">withStream: aStream during: aBlock		| saved |	saved := stream.	stream := aStream.	^aBlock ensure: [stream := saved]</body>

<body package="Amqp">nextLonglongPut: v		v ifNil: [^self nextLonglongPut: 0].	1		to: 8		do: [:i | self nextOctetPut: (v digitAt: 9 - i)].	^v</body>

<body package="Amqp">nextShortPut: v		v ifNil: [^self nextShortPut: 0].	1		to: 2		do: [:i | self nextOctetPut: (v digitAt: 3 - i)].	^v</body>

<body package="Amqp">flush		stream flush</body>

<body package="Amqp">nextLongstrPut: v		v		ifNil:			[self nextLongPut: 0.			^v].	self nextLongPut: v size.	stream nextPutAll: v asByteArray.	^v</body>

<body package="Amqp">nextLongstrBytes		^stream next: self nextLong</body>

<body package="Amqp">nextLong		| v |	v := stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	^v</body>

<body package="Amqp">nextOctetPut: v		v ifNil: [^self nextOctetPut: 0].	^stream nextPut: v</body>

<body package="Amqp">nextLongstr		^self nextLongstrBytes asString</body>

<body package="Amqp">nextShortstr		^(stream next: self nextOctet) asString</body>

<body package="Amqp">nextShort		| v |	v := stream next.	v := (v bitShift: 8) + stream next.	^v</body>

<body package="Amqp">nextLonglong		| v |	v := stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	v := (v bitShift: 8) + stream next.	^v</body>

<body package="Amqp">nextShortstrPut: v		v		ifNil:			[self nextOctetPut: 0.			^v].	self nextOctetPut: v size.	stream nextPutAll: v asByteArray.	^v</body>

<body package="Amqp">nextTable		| buf d key type val |	buf := self nextLongstrBytes.	d := Dictionary new.	self		withStream: buf readStream		during:			[[stream peek notNil]				whileTrue:					[key := self nextShortstr.					type := self nextOctet.					val := self nextTableValue: type.					d at: key put: val]].	^d</body>

<body package="Amqp">nextOctet		^stream next</body>

<body package="Amqp">nextLongPut: v		v ifNil: [^self nextLongPut: 0].	1		to: 4		do: [:i | self nextOctetPut: (v digitAt: 5 - i)].	^v</body>

<body package="Amqp">nextTableValue: type		type = $S asciiValue ifTrue: [^self nextLongstr].	type = $I asciiValue ifTrue: [^self nextLong].	type = $D asciiValue		ifTrue:			[| decimals raw |			decimals := self nextOctet.			raw := self nextLong.			^raw / (10 raisedTo: decimals) asScaledDecimal: decimals].	type = $T asciiValue ifTrue: [^self nextTimestamp].	type = $F asciiValue ifTrue: [^self nextTable].	type = $t asciiValue ifTrue: [^self nextBoolean].	AmqpProtocolSyntaxError signal: 'Unsupported AMQP table field type'</body>

<body package="Amqp">nextTableValuePut: val		(val isKindOf: ScaledDecimal)		ifTrue:			[self nextOctetPut: $D asciiValue.			self nextOctetPut: val scale.			self nextLongPut: val asFraction * (10 raisedTo: val scale).			^val].	(val isKindOf: String)		ifTrue:			[self nextOctetPut: $S asciiValue.			self nextLongstrPut: val.			^val].	(val isKindOf: Integer)		ifTrue:			[self nextOctetPut: $I asciiValue.			self nextLongPut: val.			^val].	(val isKindOf: DateAndTime)		ifTrue:			[self nextOctetPut: $T asciiValue.			self nextTimestampPut: val.			^val].	(val isKindOf: Dictionary)		ifTrue:			[self nextOctetPut: $F asciiValue.			self nextTablePut: val.			^val].	AmqpProtocolSyntaxError signal: 'Unsupported AMQP table field value'</body>

<body package="Amqp">nextTimestamp		^(DateAndTime year: 1970 day: 1) + self nextLonglong seconds</body>
</methods>


<methods>
<class-id>AmqpCommand</class-id> <category>accessing</category>

<body package="Amqp">properties: anObject		properties := anObject</body>

<body package="Amqp">method: anObject		method := anObject</body>

<body package="Amqp">body: anObject		body := anObject</body>

<body package="Amqp">method		^method</body>

<body package="Amqp">body		^body</body>

<body package="Amqp">properties		^properties</body>
</methods>


<methods>
<class-id>AmqpConnection class</class-id> <category>as yet unclassified</category>

<body package="Amqp">protocolClass		^Amqp091</body>
</methods>


<methods>
<class-id>AmqpConnection</class-id> <category>accessing</category>

<body package="Amqp">socket: anObject		socket := anObject</body>

<body package="Amqp">virtualHost		^virtualHost</body>

<body package="Amqp">parameters		^parameters</body>

<body package="Amqp">codec		^codec</body>

<body package="Amqp">setChannel: n to: aChannelHandler		channels at: n put: aChannelHandler</body>

<body package="Amqp">virtualHost: anObject		virtualHost := anObject</body>

<body package="Amqp">credentials: anObject		credentials := anObject</body>

<body package="Amqp">codec: anObject		codec := anObject</body>

<body package="Amqp">socket		^socket</body>

<body package="Amqp">parameters: anObject		parameters := anObject</body>

<body package="Amqp">credentials		^credentials</body>
</methods>

<methods>
<class-id>AmqpConnection</class-id> <category>as yet unclassified</category>

<body package="Amqp">mainLoopCycle		| frame |	frame := self nextFrame.	frame		ifNil:			[self hardClose.			^self].	(frame isKindOf: AmqpHeartbeatFrame)		ifTrue: [self sendFrame: frame]		ifFalse: [(channels at: frame channelNumber) handleFrame: frame]</body>

<body package="Amqp">sendMethod: aMethod onChannel: channelNumber		self		sendFrame:			((AmqpMethodFrame new)				frameType: self protocolClass frameMethod;				channelNumber: channelNumber;				methodId: aMethod codecMethodId;				method: aMethod).	codec flush</body>

<body package="Amqp">nextChannel		| tries limit |	tries := 0.	limit := parameters channelMax.	(limit isNil or: [limit = 0]) ifTrue: [limit := 32767].	[channels includesKey: nextChannel]		whileTrue:			[nextChannel := nextChannel + 1 rem: limit.			tries := tries + 1.			nextChannel = 0 ifTrue: [nextChannel := 1].			tries &gt; limit ifTrue: [AmqpResourceError signal: 'No free channels']].	^nextChannel</body>

<body package="Amqp">sendBodyFrameContaining: aByteArray startingAt: pos onChannel: channelNumber		| pieceLen |	pieceLen := aByteArray size min: parameters frameMax - 8.	"Seven bytes of header, plus one byte of footer."	self		sendFrame:			((AmqpContentBodyFrame new)				frameType: protocolClass frameBody;				channelNumber: channelNumber;				fragment:						(aByteArray								copyFrom: pos								to: pos + pieceLen - 1)).	^pos + pieceLen</body>

<body package="Amqp">open		| pc response |	codec := AmqpCodec new.	codec stream: (SocketStream on: socket).	codec stream binary.	pc := self protocolClass.	codec stream nextPutAll: pc protocolHeader.	codec flush.	response := credentials responseFor: self nextFrame method.	response		ifNil:			[AmqpDisconnectedError signal:					'No acceptable SASL mechanism for the given credentials'].	self		sendMethod:			((pc connectionStartOkMethod new)				clientProperties:						((Dictionary new)								at: 'product' put: 'RabbitMQ Smalltalk';								yourself);				mechanism: response key;				response: response value)		onChannel: 0.	credentials := nil.	parameters applyServerSettings: self nextFrame method.	self		sendMethod:			((pc connectionTuneOkMethod new)				channelMax: parameters channelMax;				frameMax: parameters frameMax;				heartbeat: parameters heartbeat)		onChannel: 0.	self installChannel0.	self		rpc: (pc connectionOpenMethod new virtualHost: virtualHost)		onChannel: 0.	isOpen := true</body>

<body package="Amqp">processAsyncEvents		[self ensureOpen.	codec stream isDataAvailable or: [socket isConnected not]]		whileTrue: [self mainLoopCycle]</body>

<body package="Amqp">resetChannel: channelNumber		channels		removeKey: channelNumber		ifAbsent: []</body>

<body package="Amqp">sendMethod: aMethod properties: aProperties body: aByteArray onChannel: channelNumber		| pos |	self ensureChannel: channelNumber.	self		sendFrame:			((AmqpMethodFrame new)				frameType: protocolClass frameMethod;				channelNumber: channelNumber;				methodId: aMethod codecMethodId;				method: aMethod).	self		sendFrame:			((AmqpContentHeaderFrame new)				frameType: protocolClass frameHeader;				channelNumber: channelNumber;				classId: aProperties codecClassId;				bodySize: aByteArray size;				properties: aProperties).	pos := 1.	[pos &lt;= aByteArray size]		whileTrue:			[pos := self sendBodyFrameContaining: aByteArray startingAt: pos onChannel:					channelNumber].	codec flush</body>

<body package="Amqp">handleConnectionClose: cmd		self internalClose: cmd method.	isOpen := false.	self		sendMethod: self protocolClass connectionCloseOkMethod new		onChannel: 0.	socket close</body>

<body package="Amqp">newChannel		| c |	self ensureOpen.	c := AmqpChannelHandler new connection: self.	^AmqpChannel new handler: c</body>

<body package="Amqp">protocolClass		^protocolClass</body>

<body package="Amqp">initialize		super initialize.	socket := Socket newTCP.	credentials := (AmqpPlainCredentials new)		username: 'guest';		password: 'guest'.	parameters := (AmqpConnectionParameters new)		channelMax: 0;		frameMax: 131072;		heartbeat: 0.	virtualHost := '/'.	isOpen := false.	closeReason := nil.	channels := Dictionary new.	nextChannel := 0</body>

<body package="Amqp">internalClose: method		closeReason		ifNil:			[closeReason := method.			channels values copy do: [:ch | ch internalClose: method].			self changed: #connectionClosed]</body>

<body package="Amqp">installChannel0		| c |	c := AmqpChannelHandler new connection: self.	c		mapEvent: self protocolClass connectionCloseMethod		to: self		selector: #handleConnectionClose:</body>

<body package="Amqp">ensureOpen		closeReason notNil		ifTrue: [AmqpDisconnectedError signal: 'Connection closed']</body>

<body package="Amqp">host: hostName		^self		host: hostName		port: self protocolClass portNumber</body>

<body package="Amqp">close		| c |	isOpen		ifTrue:			[isOpen := false.			c := (self protocolClass connectionCloseMethod new)				replyCode: self protocolClass replySuccess;				replyText: 'Normal shutdown';				classId: 0;				methodId: 0.			self rpc: c onChannel: 0.			self internalClose: c].	socket close</body>

<body package="Amqp">host: hostName port: portNumber		socket connectToHostNamed: hostName port: portNumber</body>

<body package="Amqp">ensureChannel: channelNumber		self ensureOpen.	^(channels at: channelNumber) ensureOpen</body>

<body package="Amqp">protocolClass: p		protocolClass := p</body>

<body package="Amqp">rpc: requestMethod onChannel: channelNumber		| ch |	ch := self ensureChannel: channelNumber.	self sendMethod: requestMethod onChannel: channelNumber.	^ch waitForReply: requestMethod acceptableResponseClasses</body>

<body package="Amqp">sendFrame: aFrame		aFrame encodeOn: codec.	codec nextOctetPut: self protocolClass frameEnd</body>

<body package="Amqp">hardClose		| c |	isOpen		ifTrue:			[isOpen := false.			c := (self protocolClass connectionCloseMethod new)				replyCode: self protocolClass internalError;				replyText: 'Abnormal disconnection'.			self internalClose: c].	socket close</body>

<body package="Amqp">closeReason		^closeReason</body>

<body package="Amqp">nextFrame		| type channel length fc f |	[type := codec nextOctet.	type ifNil: [^nil].	channel := codec nextShort.	length := codec nextLong.	fc := self protocolClass frameClassFor: type.	fc notNil		ifTrue:			[f := fc new.			f frameType: type.			f channelNumber: channel.			f readFrom: self length: length.			codec nextOctet = self protocolClass frameEnd				ifFalse: [AmqpProtocolSyntaxError signal: 'Missing frame end marker'].			^f]] repeat</body>
</methods>


<methods>
<class-id>AmqpConnectionParameters</class-id> <category>accessing</category>

<body package="Amqp">frameMax		^frameMax</body>

<body package="Amqp">channelMax: anObject		channelMax := anObject</body>

<body package="Amqp">channelMax		^channelMax</body>

<body package="Amqp">heartbeat: anObject		heartbeat := anObject</body>

<body package="Amqp">heartbeat		^heartbeat</body>

<body package="Amqp">frameMax: anObject		frameMax := anObject</body>
</methods>

<methods>
<class-id>AmqpConnectionParameters</class-id> <category>as yet unclassified</category>

<body package="Amqp">applyServerSettings: aTune		channelMax := self		combine: channelMax		with: aTune channelMax.	frameMax := self		combine: frameMax		with: aTune frameMax.	heartbeat := self		combine: heartbeat		with: aTune heartbeat</body>

<body package="Amqp">combine: v1 with: v2		v1 = 0 ifTrue: [^v2].	v2 = 0 ifTrue: [^v1].	^v1 min: v2</body>
</methods>


<methods>
<class-id>AmqpEntityDefinition</class-id> <category>accessing</category>

<body package="Amqp">index: anObject		index := anObject</body>

<body package="Amqp">xml		^xml</body>

<body package="Amqp">index		^index</body>

<body package="Amqp">xml: anObject		xml := anObject</body>

<body package="Amqp">name: anObject		name := anObject</body>

<body package="Amqp">methodName		^AmqpSpecCompiler methodNameFor: name</body>

<body package="Amqp">name		^name</body>
</methods>

<methods>
<class-id>AmqpEntityDefinition</class-id> <category>as yet unclassified</category>

<body package="Amqp">printOn: aStream		super printOn: aStream.	aStream		space;		nextPutAll: name;		nextPut: $(;		nextPutAll: index asString;		nextPut: $)</body>

<body package="Amqp">installOn: aDictionary		aDictionary at: name put: self</body>

<body package="Amqp">loadFrom: anXmlNode		xml := anXmlNode.	name := AmqpSpecification normalizeName: (xml attributeAt: #name).	index := xml		attributeAt: #index		ifAbsent: [nil].	index ifNotNil: [index := index asInteger]</body>
</methods>


<methods>
<class-id>AmqpClassDefinition</class-id> <category>accessing</category>

<body package="Amqp">contentProperties		^contentProperties</body>

<body package="Amqp">resolveUsing: spec		methods valuesDo: [:each | each resolveUsing: spec].	contentProperties do: [:each | each resolveUsing: spec]</body>

<body package="Amqp">methods		^methods</body>

<body package="Amqp">propertiesAndMasksDo: aBlock		| i bitIndex bitMask |	i := 0.	contentProperties		do:			[:prop | 			(i rem: 16) = 15 ifTrue: [i := i + 1].			bitIndex := i // 16 * 16 + (15 - (i rem: 16)).			i := i + 1.			bitMask := 1 bitShift: bitIndex.			aBlock value: prop value: bitMask]</body>
</methods>

<methods>
<class-id>AmqpClassDefinition</class-id> <category>as yet unclassified</category>

<body package="Amqp">hasProperties		^self contentProperties isEmpty not</body>

<body package="Amqp">propertiesName		^self name , ' properties'</body>

<body package="Amqp">loadFrom: anXmlNode		super loadFrom: anXmlNode.	methods := Dictionary new.	xml		tagsNamed: #method		do:			[:each | 			(AmqpMethodDefinition new)				loadFrom: each;				classDef: self;				installOn: methods].	contentProperties := OrderedCollection new.	xml		tagsNamed: #field		childrenDo:			[:each | 			contentProperties				add:					((AmqpFieldDefinition new)						loadFrom: each;						container: self)]</body>
</methods>


<methods>
<class-id>AmqpFieldDefinition</class-id> <category>accessing</category>

<body package="Amqp">domain: anObject		domain := anObject</body>

<body package="Amqp">container: anObject		container := anObject</body>

<body package="Amqp">domain		^domain</body>

<body package="Amqp">container		^container</body>
</methods>

<methods>
<class-id>AmqpFieldDefinition</class-id> <category>as yet unclassified</category>

<body package="Amqp">isReserved		^reserved</body>

<body package="Amqp">resolveUsing: spec		domain := spec resolveDomain: domain</body>

<body package="Amqp">loadFrom: anXmlNode		super loadFrom: anXmlNode.	domain := xml		attributeAt: #domain		ifAbsent:			[xml				attributeAt: #type				ifAbsent: [self error: 'field missing domain']].	reserved := (xml attributeAt: #reserved) = '1'</body>

<body package="Amqp">domainName		^AmqpSpecCompiler capitalizedNameFor: domain</body>
</methods>


<methods>
<class-id>AmqpMethodDefinition</class-id> <category>accessing</category>

<body package="Amqp">isClientMethod		^clientMethod</body>

<body package="Amqp">responses		^responses</body>

<body package="Amqp">isSynchronous		^synchronous</body>

<body package="Amqp">classDef		^classDef</body>

<body package="Amqp">hasContents		^hasContents</body>

<body package="Amqp">resolveUsing: spec		fields do: [:each | each resolveUsing: spec]</body>

<body package="Amqp">isServerMethod		^serverMethod</body>

<body package="Amqp">classDef: anObject		classDef := anObject</body>

<body package="Amqp">loadFrom: anXmlNode		super loadFrom: anXmlNode.	fields := OrderedCollection new.	xml		tagsNamed: #field		do:			[:each | 			fields				add:					((AmqpFieldDefinition new)						loadFrom: each;						container: self)].	hasContents := (xml attributeAt: #content) = '1'.	synchronous := (xml attributeAt: #synchronous) = '1'.	xml		tagsNamed: #chassis		do:			[:each | 			(each attributeAt: #name) = 'server' ifTrue: [serverMethod := true].			(each attributeAt: #name) = 'client' ifTrue: [clientMethod := true]].	responses := Set new.	xml		tagsNamed: #response		do:			[:each | responses add: (AmqpSpecification normalizeName: (each attributeAt: #name))]</body>

<body package="Amqp">fields		^fields</body>
</methods>

<methods>
<class-id>AmqpMethodDefinition</class-id> <category>as yet unclassified</category>

<body package="Amqp">methodId		^(self classDef index bitShift: 16) bitOr: self index</body>
</methods>


<methods>
<class-id>AmqpFrame</class-id> <category>accessing</category>

<body package="Amqp">channelNumber: anObject		channelNumber := anObject</body>

<body package="Amqp">frameType: anObject		frameType := anObject</body>

<body package="Amqp">frameType		^frameType</body>

<body package="Amqp">encodeOn: codec		codec		nextOctetPut: frameType;		nextShortPut: channelNumber;		nextLongstrPut: self encodedBody</body>

<body package="Amqp">channelNumber		^channelNumber</body>

<body package="Amqp">encodeBodyOn: codec		self subclassResponsibility</body>

<body package="Amqp">encodedBody		| s c |	s := WriteStream with: ByteArray new.	c := AmqpCodec new stream: s.	self encodeBodyOn: c.	c flush.	^s contents</body>

<body package="Amqp">readFrom: conn length: length		self subclassResponsibility</body>
</methods>


<methods>
<class-id>AmqpContentBodyFrame</class-id> <category>accessing</category>

<body package="Amqp">readFrom: conn length: length		fragment := conn codec stream next: length</body>

<body package="Amqp">fragment: anObject		fragment := anObject</body>

<body package="Amqp">fragment		^fragment</body>
</methods>

<methods>
<class-id>AmqpContentBodyFrame</class-id> <category>as yet unclassified</category>

<body package="Amqp">encodedBody		^fragment</body>
</methods>


<methods>
<class-id>AmqpContentHeaderFrame</class-id> <category>accessing</category>

<body package="Amqp">classId: anObject		classId := anObject</body>

<body package="Amqp">properties		^properties</body>

<body package="Amqp">classId		^classId</body>

<body package="Amqp">encodeBodyOn: codec		codec nextShortPut: classId.	codec nextShortPut: 0.	codec nextLonglongPut: bodySize.	properties encodeOn: codec</body>

<body package="Amqp">bodySize		^bodySize</body>

<body package="Amqp">bodySize: anObject		bodySize := anObject</body>

<body package="Amqp">properties: anObject		properties := anObject</body>

<body package="Amqp">readFrom: conn length: length		| codec |	codec := conn codec.	classId := codec nextShort.	codec nextShort.	"skip unused weight field."	bodySize := codec nextLonglong.	properties := (conn protocolClass classForId: classId) new.	properties decodeFrom: codec</body>
</methods>


<methods>
<class-id>AmqpHeartbeatFrame</class-id> <category>as yet unclassified</category>

<body package="Amqp">encodedBody		^ByteArray new</body>

<body package="Amqp">readFrom: conn length: length		length = 0		ifFalse:			[AmqpProtocolSyntaxError signal: 'Illegal heartbeat frame from server']</body>
</methods>


<methods>
<class-id>AmqpMethodFrame</class-id> <category>accessing</category>

<body package="Amqp">methodId		^methodId</body>

<body package="Amqp">methodId: anObject		methodId := anObject</body>

<body package="Amqp">method		^method</body>

<body package="Amqp">method: anObject		method := anObject</body>
</methods>

<methods>
<class-id>AmqpMethodFrame</class-id> <category>as yet unclassified</category>

<body package="Amqp">readFrom: conn length: length		| codec |	codec := conn codec.	methodId := codec nextLong.	method := (conn protocolClass methodForId: methodId) new.	method decodeFrom: codec</body>

<body package="Amqp">encodeBodyOn: codec		codec nextLongPut: methodId.	method encodeOn: codec</body>
</methods>


<methods>
<class-id>AmqpProtocolHeaderFrame</class-id> <category>as yet unclassified</category>

<body package="Amqp">readFrom: conn length: length		| codec |	"length is four bytes big-endian: $P followed by the first three bytes of the version spec."	codec := conn codec.	(length digitAt: 4) = $P asciiValue		ifFalse:			[AmqpProtocolSyntaxError signal: 'Invalid AMQP protocol version header'].	transportVersion := length digitAt: 3.	transportVersion = 1		ifTrue:			[isObsoleteProtocolVariant := true.			(length digitAt: 2) = 1				ifFalse:					[AmqpProtocolSyntaxError signal: 'Unexpected transport version low byte'].			majorVersion := length digitAt: 1.			minorVersion := codec nextOctet.			revision := nil]		ifFalse:			[isObsoleteProtocolVariant := false.			majorVersion := length digitAt: 2.			minorVersion := length digitAt: 1.			revision := codec nextOctet].	(AmqpProtocolMismatchError new)		serverProtocolHeader: self;		signal: 'Incompatible server AMQP protocol version'</body>
</methods>


<methods>
<class-id>AmqpPlainCredentials</class-id> <category>accessing</category>

<body package="Amqp">password: anObject		password := anObject</body>

<body package="Amqp">username: anObject		username := anObject</body>

<body package="Amqp">username		^username</body>

<body package="Amqp">password		^password</body>

<body package="Amqp">responseFor: aMethod		| s |	(aMethod mechanisms substrings includes: 'PLAIN') ifFalse: [^nil].	s := WriteStream with: ByteArray new.	s		nextPut: 0;		nextPutAll: username asByteArray.	s		nextPut: 0;		nextPutAll: password asByteArray.	^'PLAIN' -&gt; s contents</body>
</methods>


<methods>
<class-id>AmqpProtocol class</class-id> <category>as yet unclassified</category>

<body package="Amqp">protocolHeader		| s |	s := WriteStream on: (ByteArray new: 8).	s nextPutAll: 'AMQP' asByteArray.	self isObsoleteProtocolVariant		ifTrue:			[s				nextPut: 1;				nextPut: 1;				nextPut: self majorVersion;				nextPut: self minorVersion]		ifFalse:			[s				nextPut: 0;				nextPut: self majorVersion;				nextPut: self minorVersion;				nextPut: self revision].	^s contents</body>

<body package="Amqp">majorVersion		self subclassResponsibility</body>

<body package="Amqp">initialize		super initialize.	classIds := Dictionary new.	methodIds := Dictionary new</body>

<body package="Amqp">portNumber		self subclassResponsibility</body>

<body package="Amqp">frameClassFor: typeCode		typeCode = self frameMethod ifTrue: [^AmqpMethodFrame].	typeCode = self frameHeader ifTrue: [^AmqpContentHeaderFrame].	typeCode = self frameBody ifTrue: [^AmqpContentBodyFrame].	typeCode = self frameHeartbeat ifTrue: [^AmqpHeartbeatFrame].	typeCode = $A asciiValue ifTrue: [^AmqpProtocolHeaderFrame].	^nil	"ignored frame kind"</body>

<body package="Amqp">versionString		^self majorVersion asString , '-' , self minorVersion asString		,			(self revision &gt; 0				ifTrue: ['-' , self revision asString]				ifFalse: [''])</body>

<body package="Amqp">isObsoleteProtocolVariant		self subclassResponsibility</body>

<body package="Amqp">classForId: classId		^classIds		at: classId		ifAbsent: [AmqpProtocolSyntaxError signal: 'Unsupported AMQP class']</body>

<body package="Amqp">revision		self subclassResponsibility</body>

<body package="Amqp">minorVersion		self subclassResponsibility</body>

<body package="Amqp">methodForId: methodId		^methodIds		at: methodId		ifAbsent: [AmqpProtocolSyntaxError signal: 'Unsupported AMQP method']</body>
</methods>


<methods>
<class-id>Amqp08 class</class-id> <category>AMQP methods</category>

<body package="Amqp">fileConsumeMethod		^Amqp08FileConsume</body>

<body package="Amqp">dtxSelectOkMethod		^Amqp08DtxSelectOk</body>

<body package="Amqp">basicPublishMethod		^Amqp08BasicPublish</body>

<body package="Amqp">basicGetMethod		^Amqp08BasicGet</body>

<body package="Amqp">queueBindOkMethod		^Amqp08QueueBindOk</body>

<body package="Amqp">channelOpenMethod		^Amqp08ChannelOpen</body>

<body package="Amqp">connectionOpenOkMethod		^Amqp08ConnectionOpenOk</body>

<body package="Amqp">fileRejectMethod		^Amqp08FileReject</body>

<body package="Amqp">queueDeleteMethod		^Amqp08QueueDelete</body>

<body package="Amqp">connectionTuneOkMethod		^Amqp08ConnectionTuneOk</body>

<body package="Amqp">streamPublishMethod		^Amqp08StreamPublish</body>

<body package="Amqp">testContentMethod		^Amqp08TestContent</body>

<body package="Amqp">txRollbackMethod		^Amqp08TxRollback</body>

<body package="Amqp">txSelectOkMethod		^Amqp08TxSelectOk</body>

<body package="Amqp">channelOpenOkMethod		^Amqp08ChannelOpenOk</body>

<body package="Amqp">tunnelRequestMethod		^Amqp08TunnelRequest</body>

<body package="Amqp">fileConsumeOkMethod		^Amqp08FileConsumeOk</body>

<body package="Amqp">dtxStartMethod		^Amqp08DtxStart</body>

<body package="Amqp">connectionTuneMethod		^Amqp08ConnectionTune</body>

<body package="Amqp">connectionRedirectMethod		^Amqp08ConnectionRedirect</body>

<body package="Amqp">connectionCloseMethod		^Amqp08ConnectionClose</body>

<body package="Amqp">fileReturnMethod		^Amqp08FileReturn</body>

<body package="Amqp">basicGetEmptyMethod		^Amqp08BasicGetEmpty</body>

<body package="Amqp">basicGetOkMethod		^Amqp08BasicGetOk</body>

<body package="Amqp">streamQosMethod		^Amqp08StreamQos</body>

<body package="Amqp">testContentOkMethod		^Amqp08TestContentOk</body>

<body package="Amqp">basicConsumeMethod		^Amqp08BasicConsume</body>

<body package="Amqp">fileDeliverMethod		^Amqp08FileDeliver</body>

<body package="Amqp">dtxStartOkMethod		^Amqp08DtxStartOk</body>

<body package="Amqp">connectionSecureMethod		^Amqp08ConnectionSecure</body>

<body package="Amqp">basicDeliverMethod		^Amqp08BasicDeliver</body>

<body package="Amqp">exchangeDeclareMethod		^Amqp08ExchangeDeclare</body>

<body package="Amqp">testIntegerMethod		^Amqp08TestInteger</body>

<body package="Amqp">fileStageMethod		^Amqp08FileStage</body>

<body package="Amqp">streamQosOkMethod		^Amqp08StreamQosOk</body>

<body package="Amqp">queueDeleteOkMethod		^Amqp08QueueDeleteOk</body>

<body package="Amqp">queueBindMethod		^Amqp08QueueBind</body>

<body package="Amqp">queuePurgeMethod		^Amqp08QueuePurge</body>

<body package="Amqp">fileOpenMethod		^Amqp08FileOpen</body>

<body package="Amqp">streamCancelMethod		^Amqp08StreamCancel</body>

<body package="Amqp">connectionSecureOkMethod		^Amqp08ConnectionSecureOk</body>

<body package="Amqp">txCommitMethod		^Amqp08TxCommit</body>

<body package="Amqp">connectionCloseOkMethod		^Amqp08ConnectionCloseOk</body>

<body package="Amqp">txRollbackOkMethod		^Amqp08TxRollbackOk</body>

<body package="Amqp">testIntegerOkMethod		^Amqp08TestIntegerOk</body>

<body package="Amqp">streamReturnMethod		^Amqp08StreamReturn</body>

<body package="Amqp">connectionOpenMethod		^Amqp08ConnectionOpen</body>

<body package="Amqp">queueDeclareMethod		^Amqp08QueueDeclare</body>

<body package="Amqp">channelFlowMethod		^Amqp08ChannelFlow</body>

<body package="Amqp">channelFlowOkMethod		^Amqp08ChannelFlowOk</body>

<body package="Amqp">basicRejectMethod		^Amqp08BasicReject</body>

<body package="Amqp">fileOpenOkMethod		^Amqp08FileOpenOk</body>

<body package="Amqp">streamCancelOkMethod		^Amqp08StreamCancelOk</body>

<body package="Amqp">connectionStartMethod		^Amqp08ConnectionStart</body>

<body package="Amqp">testStringMethod		^Amqp08TestString</body>

<body package="Amqp">basicConsumeOkMethod		^Amqp08BasicConsumeOk</body>

<body package="Amqp">exchangeDeleteOkMethod		^Amqp08ExchangeDeleteOk</body>

<body package="Amqp">channelCloseMethod		^Amqp08ChannelClose</body>

<body package="Amqp">accessRequestMethod		^Amqp08AccessRequest</body>

<body package="Amqp">streamConsumeMethod		^Amqp08StreamConsume</body>

<body package="Amqp">basicQosMethod		^Amqp08BasicQos</body>

<body package="Amqp">channelAlertMethod		^Amqp08ChannelAlert</body>

<body package="Amqp">testStringOkMethod		^Amqp08TestStringOk</body>

<body package="Amqp">fileAckMethod		^Amqp08FileAck</body>

<body package="Amqp">queueDeclareOkMethod		^Amqp08QueueDeclareOk</body>

<body package="Amqp">basicAckMethod		^Amqp08BasicAck</body>

<body package="Amqp">filePublishMethod		^Amqp08FilePublish</body>

<body package="Amqp">accessRequestOkMethod		^Amqp08AccessRequestOk</body>

<body package="Amqp">streamConsumeOkMethod		^Amqp08StreamConsumeOk</body>

<body package="Amqp">basicCancelMethod		^Amqp08BasicCancel</body>

<body package="Amqp">testTableMethod		^Amqp08TestTable</body>

<body package="Amqp">basicRecoverMethod		^Amqp08BasicRecover</body>

<body package="Amqp">txCommitOkMethod		^Amqp08TxCommitOk</body>

<body package="Amqp">fileCancelMethod		^Amqp08FileCancel</body>

<body package="Amqp">txSelectMethod		^Amqp08TxSelect</body>

<body package="Amqp">fileQosMethod		^Amqp08FileQos</body>

<body package="Amqp">streamDeliverMethod		^Amqp08StreamDeliver</body>

<body package="Amqp">basicReturnMethod		^Amqp08BasicReturn</body>

<body package="Amqp">exchangeDeleteMethod		^Amqp08ExchangeDelete</body>

<body package="Amqp">channelCloseOkMethod		^Amqp08ChannelCloseOk</body>

<body package="Amqp">testTableOkMethod		^Amqp08TestTableOk</body>

<body package="Amqp">basicCancelOkMethod		^Amqp08BasicCancelOk</body>

<body package="Amqp">connectionStartOkMethod		^Amqp08ConnectionStartOk</body>

<body package="Amqp">fileCancelOkMethod		^Amqp08FileCancelOk</body>

<body package="Amqp">exchangeDeclareOkMethod		^Amqp08ExchangeDeclareOk</body>

<body package="Amqp">dtxSelectMethod		^Amqp08DtxSelect</body>

<body package="Amqp">basicQosOkMethod		^Amqp08BasicQosOk</body>

<body package="Amqp">fileQosOkMethod		^Amqp08FileQosOk</body>

<body package="Amqp">queuePurgeOkMethod		^Amqp08QueuePurgeOk</body>
</methods>

<methods>
<class-id>Amqp08 class</class-id> <category>AMQP protocol constants</category>

<body package="Amqp">notFound		^404</body>

<body package="Amqp">frameHeartbeat		^8</body>

<body package="Amqp">replySuccess		^200</body>

<body package="Amqp">notAllowed		^530</body>

<body package="Amqp">contentTooLarge		^311</body>

<body package="Amqp">syntaxError		^502</body>

<body package="Amqp">resourceLocked		^405</body>

<body package="Amqp">frameOobMethod		^4</body>

<body package="Amqp">frameMinSize		^4096</body>

<body package="Amqp">frameEnd		^206</body>

<body package="Amqp">resourceError		^506</body>

<body package="Amqp">frameOobHeader		^5</body>

<body package="Amqp">internalError		^541</body>

<body package="Amqp">notImplemented		^540</body>

<body package="Amqp">invalidPath		^402</body>

<body package="Amqp">frameHeader		^2</body>

<body package="Amqp">notDelivered		^310</body>

<body package="Amqp">connectionForced		^320</body>

<body package="Amqp">frameMethod		^1</body>

<body package="Amqp">accessRefused		^403</body>

<body package="Amqp">frameError		^501</body>

<body package="Amqp">frameOobBody		^6</body>

<body package="Amqp">channelError		^504</body>

<body package="Amqp">frameTrace		^7</body>

<body package="Amqp">commandInvalid		^503</body>

<body package="Amqp">frameBody		^3</body>
</methods>

<methods>
<class-id>Amqp08 class</class-id> <category>class initialization</category>

<body package="Amqp">initialize		super initialize.	classIds at: 70 put: Amqp08FileProperties.	classIds at: 80 put: Amqp08StreamProperties.	classIds at: 60 put: Amqp08BasicProperties.	classIds at: 110 put: Amqp08TunnelProperties.	methodIds at: 2621461 put: Amqp08ExchangeDeleteOk.	methodIds at: 2621450 put: Amqp08ExchangeDeclare.	methodIds at: 2621451 put: Amqp08ExchangeDeclareOk.	methodIds at: 2621460 put: Amqp08ExchangeDelete.	methodIds at: 3276821 put: Amqp08QueueBindOk.	methodIds at: 3276841 put: Amqp08QueueDeleteOk.	methodIds at: 3276820 put: Amqp08QueueBind.	methodIds at: 3276840 put: Amqp08QueueDelete.	methodIds at: 3276830 put: Amqp08QueuePurge.	methodIds at: 3276810 put: Amqp08QueueDeclare.	methodIds at: 3276811 put: Amqp08QueueDeclareOk.	methodIds at: 3276831 put: Amqp08QueuePurgeOk.	methodIds at: 1310731 put: Amqp08ChannelOpenOk.	methodIds at: 1310741 put: Amqp08ChannelFlowOk.	methodIds at: 1310750 put: Amqp08ChannelAlert.	methodIds at: 1310730 put: Amqp08ChannelOpen.	methodIds at: 1310761 put: Amqp08ChannelCloseOk.	methodIds at: 1310740 put: Amqp08ChannelFlow.	methodIds at: 1310760 put: Amqp08ChannelClose.	methodIds at: 7864340 put: Amqp08TestString.	methodIds at: 7864331 put: Amqp08TestIntegerOk.	methodIds at: 7864360 put: Amqp08TestContent.	methodIds at: 7864351 put: Amqp08TestTableOk.	methodIds at: 7864361 put: Amqp08TestContentOk.	methodIds at: 7864350 put: Amqp08TestTable.	methodIds at: 7864341 put: Amqp08TestStringOk.	methodIds at: 7864330 put: Amqp08TestInteger.	methodIds at: 4587580 put: Amqp08FilePublish.	methodIds at: 4587561 put: Amqp08FileOpenOk.	methodIds at: 4587600 put: Amqp08FileDeliver.	methodIds at: 4587610 put: Amqp08FileAck.	methodIds at: 4587540 put: Amqp08FileConsume.	methodIds at: 4587530 put: Amqp08FileQos.	methodIds at: 4587570 put: Amqp08FileStage.	methodIds at: 4587541 put: Amqp08FileConsumeOk.	methodIds at: 4587590 put: Amqp08FileReturn.	methodIds at: 4587560 put: Amqp08FileOpen.	methodIds at: 4587620 put: Amqp08FileReject.	methodIds at: 4587551 put: Amqp08FileCancelOk.	methodIds at: 4587531 put: Amqp08FileQosOk.	methodIds at: 4587550 put: Amqp08FileCancel.	methodIds at: 5242920 put: Amqp08StreamPublish.	methodIds at: 5242940 put: Amqp08StreamDeliver.	methodIds at: 5242900 put: Amqp08StreamConsume.	methodIds at: 5242890 put: Amqp08StreamQos.	methodIds at: 5242901 put: Amqp08StreamConsumeOk.	methodIds at: 5242930 put: Amqp08StreamReturn.	methodIds at: 5242911 put: Amqp08StreamCancelOk.	methodIds at: 5242891 put: Amqp08StreamQosOk.	methodIds at: 5242910 put: Amqp08StreamCancel.	methodIds at: 3932200 put: Amqp08BasicPublish.	methodIds at: 3932220 put: Amqp08BasicDeliver.	methodIds at: 3932230 put: Amqp08BasicGet.	methodIds at: 3932231 put: Amqp08BasicGetOk.	methodIds at: 3932240 put: Amqp08BasicAck.	methodIds at: 3932180 put: Amqp08BasicConsume.	methodIds at: 3932170 put: Amqp08BasicQos.	methodIds at: 3932232 put: Amqp08BasicGetEmpty.	methodIds at: 3932260 put: Amqp08BasicRecover.	methodIds at: 3932181 put: Amqp08BasicConsumeOk.	methodIds at: 3932210 put: Amqp08BasicReturn.	methodIds at: 3932250 put: Amqp08BasicReject.	methodIds at: 3932191 put: Amqp08BasicCancelOk.	methodIds at: 3932171 put: Amqp08BasicQosOk.	methodIds at: 3932190 put: Amqp08BasicCancel.	methodIds at: 7208970 put: Amqp08TunnelRequest.	methodIds at: 5898250 put: Amqp08TxSelect.	methodIds at: 5898251 put: Amqp08TxSelectOk.	methodIds at: 5898270 put: Amqp08TxRollback.	methodIds at: 5898271 put: Amqp08TxRollbackOk.	methodIds at: 5898261 put: Amqp08TxCommitOk.	methodIds at: 5898260 put: Amqp08TxCommit.	methodIds at: 655380 put: Amqp08ConnectionSecure.	methodIds at: 655401 put: Amqp08ConnectionOpenOk.	methodIds at: 655370 put: Amqp08ConnectionStart.	methodIds at: 655371 put: Amqp08ConnectionStartOk.	methodIds at: 655421 put: Amqp08ConnectionCloseOk.	methodIds at: 655410 put: Amqp08ConnectionRedirect.	methodIds at: 655420 put: Amqp08ConnectionClose.	methodIds at: 655390 put: Amqp08ConnectionTune.	methodIds at: 655391 put: Amqp08ConnectionTuneOk.	methodIds at: 655381 put: Amqp08ConnectionSecureOk.	methodIds at: 655400 put: Amqp08ConnectionOpen.	methodIds at: 6553621 put: Amqp08DtxStartOk.	methodIds at: 6553611 put: Amqp08DtxSelectOk.	methodIds at: 6553620 put: Amqp08DtxStart.	methodIds at: 6553610 put: Amqp08DtxSelect.	methodIds at: 1966090 put: Amqp08AccessRequest.	methodIds at: 1966091 put: Amqp08AccessRequestOk</body>
</methods>

<methods>
<class-id>Amqp08 class</class-id> <category>AMQP protocol</category>

<body package="Amqp">portNumber		^5672</body>

<body package="Amqp">majorVersion		^0</body>

<body package="Amqp">minorVersion		^8</body>

<body package="Amqp">isObsoleteProtocolVariant		^true</body>

<body package="Amqp">revision		^0</body>
</methods>

<methods>
<class-id>Amqp08 class</class-id> <category>AMQP content properties</category>

<body package="Amqp">tunnelPropertiesClass		^Amqp08TunnelProperties</body>

<body package="Amqp">basicPropertiesClass		^Amqp08BasicProperties</body>

<body package="Amqp">filePropertiesClass		^Amqp08FileProperties</body>

<body package="Amqp">streamPropertiesClass		^Amqp08StreamProperties</body>
</methods>


<methods>
<class-id>Amqp091 class</class-id> <category>AMQP methods</category>

<body package="Amqp">basicGetMethod		^Amqp091BasicGet</body>

<body package="Amqp">basicRecoverOkMethod		^Amqp091BasicRecoverOk</body>

<body package="Amqp">queueBindOkMethod		^Amqp091QueueBindOk</body>

<body package="Amqp">connectionOpenOkMethod		^Amqp091ConnectionOpenOk</body>

<body package="Amqp">basicQosMethod		^Amqp091BasicQos</body>

<body package="Amqp">txSelectMethod		^Amqp091TxSelect</body>

<body package="Amqp">basicReturnMethod		^Amqp091BasicReturn</body>

<body package="Amqp">channelCloseOkMethod		^Amqp091ChannelCloseOk</body>

<body package="Amqp">queueDeclareOkMethod		^Amqp091QueueDeclareOk</body>

<body package="Amqp">queueDeleteMethod		^Amqp091QueueDelete</body>

<body package="Amqp">txCommitOkMethod		^Amqp091TxCommitOk</body>

<body package="Amqp">connectionStartOkMethod		^Amqp091ConnectionStartOk</body>

<body package="Amqp">basicAckMethod		^Amqp091BasicAck</body>

<body package="Amqp">connectionCloseMethod		^Amqp091ConnectionClose</body>

<body package="Amqp">queueDeleteOkMethod		^Amqp091QueueDeleteOk</body>

<body package="Amqp">exchangeDeleteMethod		^Amqp091ExchangeDelete</body>

<body package="Amqp">txRollbackOkMethod		^Amqp091TxRollbackOk</body>

<body package="Amqp">basicConsumeMethod		^Amqp091BasicConsume</body>

<body package="Amqp">channelCloseMethod		^Amqp091ChannelClose</body>

<body package="Amqp">basicCancelOkMethod		^Amqp091BasicCancelOk</body>

<body package="Amqp">basicDeliverMethod		^Amqp091BasicDeliver</body>

<body package="Amqp">basicGetOkMethod		^Amqp091BasicGetOk</body>

<body package="Amqp">connectionOpenMethod		^Amqp091ConnectionOpen</body>

<body package="Amqp">queuePurgeOkMethod		^Amqp091QueuePurgeOk</body>

<body package="Amqp">txSelectOkMethod		^Amqp091TxSelectOk</body>

<body package="Amqp">queuePurgeMethod		^Amqp091QueuePurge</body>

<body package="Amqp">basicConsumeOkMethod		^Amqp091BasicConsumeOk</body>

<body package="Amqp">channelOpenMethod		^Amqp091ChannelOpen</body>

<body package="Amqp">basicRejectMethod		^Amqp091BasicReject</body>

<body package="Amqp">txRollbackMethod		^Amqp091TxRollback</body>

<body package="Amqp">queueDeclareMethod		^Amqp091QueueDeclare</body>

<body package="Amqp">basicQosOkMethod		^Amqp091BasicQosOk</body>

<body package="Amqp">channelFlowOkMethod		^Amqp091ChannelFlowOk</body>

<body package="Amqp">basicGetEmptyMethod		^Amqp091BasicGetEmpty</body>

<body package="Amqp">connectionStartMethod		^Amqp091ConnectionStart</body>

<body package="Amqp">connectionTuneOkMethod		^Amqp091ConnectionTuneOk</body>

<body package="Amqp">exchangeDeclareMethod		^Amqp091ExchangeDeclare</body>

<body package="Amqp">queueUnbindMethod		^Amqp091QueueUnbind</body>

<body package="Amqp">channelOpenOkMethod		^Amqp091ChannelOpenOk</body>

<body package="Amqp">exchangeDeclareOkMethod		^Amqp091ExchangeDeclareOk</body>

<body package="Amqp">queueBindMethod		^Amqp091QueueBind</body>

<body package="Amqp">queueUnbindOkMethod		^Amqp091QueueUnbindOk</body>

<body package="Amqp">connectionTuneMethod		^Amqp091ConnectionTune</body>

<body package="Amqp">txCommitMethod		^Amqp091TxCommit</body>

<body package="Amqp">channelFlowMethod		^Amqp091ChannelFlow</body>

<body package="Amqp">basicPublishMethod		^Amqp091BasicPublish</body>

<body package="Amqp">connectionSecureOkMethod		^Amqp091ConnectionSecureOk</body>

<body package="Amqp">exchangeDeleteOkMethod		^Amqp091ExchangeDeleteOk</body>

<body package="Amqp">connectionSecureMethod		^Amqp091ConnectionSecure</body>

<body package="Amqp">connectionCloseOkMethod		^Amqp091ConnectionCloseOk</body>

<body package="Amqp">basicCancelMethod		^Amqp091BasicCancel</body>

<body package="Amqp">basicRecoverAsyncMethod		^Amqp091BasicRecoverAsync</body>

<body package="Amqp">basicRecoverMethod		^Amqp091BasicRecover</body>
</methods>

<methods>
<class-id>Amqp091 class</class-id> <category>AMQP protocol constants</category>

<body package="Amqp">preconditionFailed		^406</body>

<body package="Amqp">syntaxError		^502</body>

<body package="Amqp">resourceLocked		^405</body>

<body package="Amqp">noConsumers		^313</body>

<body package="Amqp">frameMinSize		^4096</body>

<body package="Amqp">frameEnd		^206</body>

<body package="Amqp">resourceError		^506</body>

<body package="Amqp">internalError		^541</body>

<body package="Amqp">notImplemented		^540</body>

<body package="Amqp">invalidPath		^402</body>

<body package="Amqp">frameHeader		^2</body>

<body package="Amqp">unexpectedFrame		^505</body>

<body package="Amqp">connectionForced		^320</body>

<body package="Amqp">frameMethod		^1</body>

<body package="Amqp">frameError		^501</body>

<body package="Amqp">accessRefused		^403</body>

<body package="Amqp">notFound		^404</body>

<body package="Amqp">channelError		^504</body>

<body package="Amqp">replySuccess		^200</body>

<body package="Amqp">commandInvalid		^503</body>

<body package="Amqp">frameBody		^3</body>

<body package="Amqp">frameHeartbeat		^8</body>

<body package="Amqp">notAllowed		^530</body>

<body package="Amqp">contentTooLarge		^311</body>
</methods>

<methods>
<class-id>Amqp091 class</class-id> <category>class initialization</category>

<body package="Amqp">initialize		super initialize.	classIds at: 60 put: Amqp091BasicProperties.	methodIds at: 2621461 put: Amqp091ExchangeDeleteOk.	methodIds at: 2621450 put: Amqp091ExchangeDeclare.	methodIds at: 2621451 put: Amqp091ExchangeDeclareOk.	methodIds at: 2621460 put: Amqp091ExchangeDelete.	methodIds at: 3932200 put: Amqp091BasicPublish.	methodIds at: 3932220 put: Amqp091BasicDeliver.	methodIds at: 3932240 put: Amqp091BasicAck.	methodIds at: 3932170 put: Amqp091BasicQos.	methodIds at: 3932232 put: Amqp091BasicGetEmpty.	methodIds at: 3932271 put: Amqp091BasicRecoverOk.	methodIds at: 3932181 put: Amqp091BasicConsumeOk.	methodIds at: 3932250 put: Amqp091BasicReject.	methodIds at: 3932230 put: Amqp091BasicGet.	methodIds at: 3932191 put: Amqp091BasicCancelOk.	methodIds at: 3932231 put: Amqp091BasicGetOk.	methodIds at: 3932180 put: Amqp091BasicConsume.	methodIds at: 3932270 put: Amqp091BasicRecover.	methodIds at: 3932210 put: Amqp091BasicReturn.	methodIds at: 3932260 put: Amqp091BasicRecoverAsync.	methodIds at: 3932171 put: Amqp091BasicQosOk.	methodIds at: 3932190 put: Amqp091BasicCancel.	methodIds at: 1310731 put: Amqp091ChannelOpenOk.	methodIds at: 1310741 put: Amqp091ChannelFlowOk.	methodIds at: 1310730 put: Amqp091ChannelOpen.	methodIds at: 1310761 put: Amqp091ChannelCloseOk.	methodIds at: 1310740 put: Amqp091ChannelFlow.	methodIds at: 1310760 put: Amqp091ChannelClose.	methodIds at: 3276821 put: Amqp091QueueBindOk.	methodIds at: 3276851 put: Amqp091QueueUnbindOk.	methodIds at: 3276840 put: Amqp091QueueDelete.	methodIds at: 3276831 put: Amqp091QueuePurgeOk.	methodIds at: 3276811 put: Amqp091QueueDeclareOk.	methodIds at: 3276850 put: Amqp091QueueUnbind.	methodIds at: 3276820 put: Amqp091QueueBind.	methodIds at: 3276830 put: Amqp091QueuePurge.	methodIds at: 3276810 put: Amqp091QueueDeclare.	methodIds at: 3276841 put: Amqp091QueueDeleteOk.	methodIds at: 5898250 put: Amqp091TxSelect.	methodIds at: 5898251 put: Amqp091TxSelectOk.	methodIds at: 5898270 put: Amqp091TxRollback.	methodIds at: 5898271 put: Amqp091TxRollbackOk.	methodIds at: 5898261 put: Amqp091TxCommitOk.	methodIds at: 5898260 put: Amqp091TxCommit.	methodIds at: 655380 put: Amqp091ConnectionSecure.	methodIds at: 655401 put: Amqp091ConnectionOpenOk.	methodIds at: 655370 put: Amqp091ConnectionStart.	methodIds at: 655371 put: Amqp091ConnectionStartOk.	methodIds at: 655411 put: Amqp091ConnectionCloseOk.	methodIds at: 655410 put: Amqp091ConnectionClose.	methodIds at: 655390 put: Amqp091ConnectionTune.	methodIds at: 655391 put: Amqp091ConnectionTuneOk.	methodIds at: 655381 put: Amqp091ConnectionSecureOk.	methodIds at: 655400 put: Amqp091ConnectionOpen</body>
</methods>

<methods>
<class-id>Amqp091 class</class-id> <category>AMQP protocol</category>

<body package="Amqp">majorVersion		^0</body>

<body package="Amqp">minorVersion		^9</body>

<body package="Amqp">isObsoleteProtocolVariant		^false</body>

<body package="Amqp">revision		^1</body>

<body package="Amqp">portNumber		^5672</body>
</methods>

<methods>
<class-id>Amqp091 class</class-id> <category>AMQP content properties</category>

<body package="Amqp">basicPropertiesClass		^Amqp091BasicProperties</body>
</methods>


<methods>
<class-id>AmqpProtocolMethod</class-id> <category>as yet unclassified</category>

<body package="Amqp">hasContents		self subclassResponsibility</body>

<body package="Amqp">codecMethodId		self subclassResponsibility</body>

<body package="Amqp">encodeOn: codec		self subclassResponsibility</body>

<body package="Amqp">decodeFrom: codec		self subclassResponsibility</body>

<body package="Amqp">acceptableResponseClasses		self subclassResponsibility</body>
</methods>


<methods>
<class-id>Amqp08AccessRequest</class-id> <category>accessing</category>

<body package="Amqp">read		^read</body>

<body package="Amqp">passive: aValue		passive := aValue</body>

<body package="Amqp">read: aValue		read := aValue</body>

<body package="Amqp">write: aValue		write := aValue</body>

<body package="Amqp">active		^active</body>

<body package="Amqp">realm: aValue		realm := aValue</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">active: aValue		active := aValue</body>

<body package="Amqp">passive		^passive</body>

<body package="Amqp">write		^write</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">realm		^realm</body>
</methods>

<methods>
<class-id>Amqp08AccessRequest</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1966090</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: realm.	bitBuffer := 0.	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(passive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(active ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(write ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	(read ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 16].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	realm := codec nextShortstr.	bitBuffer := codec nextOctet.	exclusive := (bitBuffer bitAnd: 1) ~= 0.	passive := (bitBuffer bitAnd: 2) ~= 0.	active := (bitBuffer bitAnd: 4) ~= 0.	write := (bitBuffer bitAnd: 8) ~= 0.	read := (bitBuffer bitAnd: 16) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08AccessRequestOk</body>
</methods>


<methods>
<class-id>Amqp08AccessRequestOk</class-id> <category>accessing</category>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>
</methods>

<methods>
<class-id>Amqp08AccessRequestOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1966091</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08BasicAck</class-id> <category>accessing</category>

<body package="Amqp">multiple: aValue		multiple := aValue</body>

<body package="Amqp">multiple		^multiple</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>
</methods>

<methods>
<class-id>Amqp08BasicAck</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	multiple := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932240</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(multiple ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>
</methods>


<methods>
<class-id>Amqp08BasicCancel</class-id> <category>accessing</category>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">nowait		^nowait</body>
</methods>

<methods>
<class-id>Amqp08BasicCancel</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08BasicCancelOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932190</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	nowait := (bitBuffer bitAnd: 1) ~= 0</body>
</methods>


<methods>
<class-id>Amqp08BasicCancelOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp08BasicCancelOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932191</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>
</methods>


<methods>
<class-id>Amqp08BasicConsume</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">noLocal: aValue		noLocal := aValue</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">noAck: aValue		noAck := aValue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">noAck		^noAck</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">noLocal		^noLocal</body>
</methods>

<methods>
<class-id>Amqp08BasicConsume</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932180</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(noLocal ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(noAck ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08BasicConsumeOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	noLocal := (bitBuffer bitAnd: 1) ~= 0.	noAck := (bitBuffer bitAnd: 2) ~= 0.	exclusive := (bitBuffer bitAnd: 4) ~= 0.	nowait := (bitBuffer bitAnd: 8) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08BasicConsumeOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp08BasicConsumeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932181</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08BasicDeliver</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">redelivered: aValue		redelivered := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">redelivered		^redelivered</body>
</methods>

<methods>
<class-id>Amqp08BasicDeliver</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932220</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(redelivered ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	redelivered := (bitBuffer bitAnd: 1) ~= 0.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08BasicGet</class-id> <category>accessing</category>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">noAck		^noAck</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">noAck: aValue		noAck := aValue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>
</methods>

<methods>
<class-id>Amqp08BasicGet</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#(#Amqp08BasicGetEmpty #Amqp08BasicGetOk)</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	noAck := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932230</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	bitBuffer := 0.	(noAck ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>
</methods>


<methods>
<class-id>Amqp08BasicGetEmpty</class-id> <category>accessing</category>

<body package="Amqp">clusterId		^clusterId</body>

<body package="Amqp">clusterId: aValue		clusterId := aValue</body>
</methods>

<methods>
<class-id>Amqp08BasicGetEmpty</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932232</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: clusterId</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	clusterId := codec nextShortstr</body>
</methods>


<methods>
<class-id>Amqp08BasicGetOk</class-id> <category>accessing</category>

<body package="Amqp">redelivered: aValue		redelivered := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">redelivered		^redelivered</body>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>
</methods>

<methods>
<class-id>Amqp08BasicGetOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	redelivered := (bitBuffer bitAnd: 1) ~= 0.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	messageCount := codec nextLong</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^3932231</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(redelivered ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	codec nextLongPut: messageCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08BasicPublish</class-id> <category>accessing</category>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">immediate: aValue		immediate := aValue</body>

<body package="Amqp">immediate		^immediate</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">mandatory		^mandatory</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">mandatory: aValue		mandatory := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>
</methods>

<methods>
<class-id>Amqp08BasicPublish</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932200</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(mandatory ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(immediate ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	mandatory := (bitBuffer bitAnd: 1) ~= 0.	immediate := (bitBuffer bitAnd: 2) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08BasicQos</class-id> <category>accessing</category>

<body package="Amqp">global: aValue		global := aValue</body>

<body package="Amqp">prefetchCount: aValue		prefetchCount := aValue</body>

<body package="Amqp">prefetchSize: aValue		prefetchSize := aValue</body>

<body package="Amqp">global		^global</body>

<body package="Amqp">prefetchCount		^prefetchCount</body>

<body package="Amqp">prefetchSize		^prefetchSize</body>
</methods>

<methods>
<class-id>Amqp08BasicQos</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	prefetchSize := codec nextLong.	prefetchCount := codec nextShort.	bitBuffer := codec nextOctet.	global := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932170</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: prefetchSize.	codec nextShortPut: prefetchCount.	bitBuffer := 0.	(global ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08BasicQosOk</body>
</methods>


<methods>
<class-id>Amqp08BasicQosOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932171</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08BasicRecover</class-id> <category>accessing</category>

<body package="Amqp">requeue: aValue		requeue := aValue</body>

<body package="Amqp">requeue		^requeue</body>
</methods>

<methods>
<class-id>Amqp08BasicRecover</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932260</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08BasicReject</class-id> <category>accessing</category>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">requeue		^requeue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">requeue: aValue		requeue := aValue</body>
</methods>

<methods>
<class-id>Amqp08BasicReject</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932250</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08BasicReturn</class-id> <category>accessing</category>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>
</methods>

<methods>
<class-id>Amqp08BasicReturn</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^3932210</body>
</methods>


<methods>
<class-id>Amqp08ChannelAlert</class-id> <category>accessing</category>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">details: aValue		details := aValue</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">details		^details</body>

<body package="Amqp">replyCode		^replyCode</body>
</methods>

<methods>
<class-id>Amqp08ChannelAlert</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310750</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextTablePut: details</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	details := codec nextTable</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08ChannelClose</class-id> <category>accessing</category>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">methodId: aValue		methodId := aValue</body>

<body package="Amqp">methodId		^methodId</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">classId: aValue		classId := aValue</body>

<body package="Amqp">classId		^classId</body>
</methods>

<methods>
<class-id>Amqp08ChannelClose</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1310760</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortPut: classId.	codec nextShortPut: methodId</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ChannelCloseOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	classId := codec nextShort.	methodId := codec nextShort</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ChannelCloseOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310761</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp08ChannelFlow</class-id> <category>accessing</category>

<body package="Amqp">active: aValue		active := aValue</body>

<body package="Amqp">active		^active</body>
</methods>

<methods>
<class-id>Amqp08ChannelFlow</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1310740</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(active ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	active := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ChannelFlowOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ChannelFlowOk</class-id> <category>accessing</category>

<body package="Amqp">active		^active</body>

<body package="Amqp">active: aValue		active := aValue</body>
</methods>

<methods>
<class-id>Amqp08ChannelFlowOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1310741</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(active ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	active := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ChannelOpen</class-id> <category>accessing</category>

<body package="Amqp">outOfBand: aValue		outOfBand := aValue</body>

<body package="Amqp">outOfBand		^outOfBand</body>
</methods>

<methods>
<class-id>Amqp08ChannelOpen</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1310730</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: outOfBand</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ChannelOpenOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	outOfBand := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ChannelOpenOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310731</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp08ConnectionClose</class-id> <category>accessing</category>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">classId: aValue		classId := aValue</body>

<body package="Amqp">classId		^classId</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">methodId: aValue		methodId := aValue</body>

<body package="Amqp">methodId		^methodId</body>
</methods>

<methods>
<class-id>Amqp08ConnectionClose</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	classId := codec nextShort.	methodId := codec nextShort</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ConnectionCloseOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655420</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortPut: classId.	codec nextShortPut: methodId</body>
</methods>


<methods>
<class-id>Amqp08ConnectionCloseOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655421</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ConnectionOpen</class-id> <category>accessing</category>

<body package="Amqp">capabilities: aValue		capabilities := aValue</body>

<body package="Amqp">insist		^insist</body>

<body package="Amqp">virtualHost: aValue		virtualHost := aValue</body>

<body package="Amqp">insist: aValue		insist := aValue</body>

<body package="Amqp">capabilities		^capabilities</body>

<body package="Amqp">virtualHost		^virtualHost</body>
</methods>

<methods>
<class-id>Amqp08ConnectionOpen</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655400</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: virtualHost.	codec nextShortstrPut: capabilities.	bitBuffer := 0.	(insist ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^#(#Amqp08ConnectionOpenOk #Amqp08ConnectionRedirect)</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	virtualHost := codec nextShortstr.	capabilities := codec nextShortstr.	bitBuffer := codec nextOctet.	insist := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ConnectionOpenOk</class-id> <category>accessing</category>

<body package="Amqp">knownHosts: aValue		knownHosts := aValue</body>

<body package="Amqp">knownHosts		^knownHosts</body>
</methods>

<methods>
<class-id>Amqp08ConnectionOpenOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655401</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: knownHosts</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	knownHosts := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ConnectionRedirect</class-id> <category>accessing</category>

<body package="Amqp">host: aValue		host := aValue</body>

<body package="Amqp">knownHosts		^knownHosts</body>

<body package="Amqp">host		^host</body>

<body package="Amqp">knownHosts: aValue		knownHosts := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionRedirect</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: host.	codec nextShortstrPut: knownHosts</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	host := codec nextShortstr.	knownHosts := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655410</body>
</methods>


<methods>
<class-id>Amqp08ConnectionSecure</class-id> <category>accessing</category>

<body package="Amqp">challenge		^challenge</body>

<body package="Amqp">challenge: aValue		challenge := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionSecure</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655380</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: challenge</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	challenge := codec nextLongstr</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ConnectionSecureOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ConnectionSecureOk</class-id> <category>accessing</category>

<body package="Amqp">response		^response</body>

<body package="Amqp">response: aValue		response := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionSecureOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: response</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	response := codec nextLongstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655381</body>
</methods>


<methods>
<class-id>Amqp08ConnectionStart</class-id> <category>accessing</category>

<body package="Amqp">mechanisms		^mechanisms</body>

<body package="Amqp">versionMajor		^versionMajor</body>

<body package="Amqp">locales		^locales</body>

<body package="Amqp">versionMinor: aValue		versionMinor := aValue</body>

<body package="Amqp">mechanisms: aValue		mechanisms := aValue</body>

<body package="Amqp">versionMajor: aValue		versionMajor := aValue</body>

<body package="Amqp">serverProperties		^serverProperties</body>

<body package="Amqp">versionMinor		^versionMinor</body>

<body package="Amqp">serverProperties: aValue		serverProperties := aValue</body>

<body package="Amqp">locales: aValue		locales := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionStart</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655370</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextOctetPut: versionMajor.	codec nextOctetPut: versionMinor.	codec nextTablePut: serverProperties.	codec nextLongstrPut: mechanisms.	codec nextLongstrPut: locales</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	versionMajor := codec nextOctet.	versionMinor := codec nextOctet.	serverProperties := codec nextTable.	mechanisms := codec nextLongstr.	locales := codec nextLongstr</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ConnectionStartOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ConnectionStartOk</class-id> <category>accessing</category>

<body package="Amqp">mechanism		^mechanism</body>

<body package="Amqp">locale		^locale</body>

<body package="Amqp">response		^response</body>

<body package="Amqp">clientProperties: aValue		clientProperties := aValue</body>

<body package="Amqp">response: aValue		response := aValue</body>

<body package="Amqp">mechanism: aValue		mechanism := aValue</body>

<body package="Amqp">clientProperties		^clientProperties</body>

<body package="Amqp">locale: aValue		locale := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionStartOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655371</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextTablePut: clientProperties.	codec nextShortstrPut: mechanism.	codec nextLongstrPut: response.	codec nextShortstrPut: locale</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	clientProperties := codec nextTable.	mechanism := codec nextShortstr.	response := codec nextLongstr.	locale := codec nextShortstr</body>
</methods>


<methods>
<class-id>Amqp08ConnectionTune</class-id> <category>accessing</category>

<body package="Amqp">heartbeat		^heartbeat</body>

<body package="Amqp">frameMax: aValue		frameMax := aValue</body>

<body package="Amqp">frameMax		^frameMax</body>

<body package="Amqp">channelMax: aValue		channelMax := aValue</body>

<body package="Amqp">channelMax		^channelMax</body>

<body package="Amqp">heartbeat: aValue		heartbeat := aValue</body>
</methods>

<methods>
<class-id>Amqp08ConnectionTune</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: channelMax.	codec nextLongPut: frameMax.	codec nextShortPut: heartbeat</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	channelMax := codec nextShort.	frameMax := codec nextLong.	heartbeat := codec nextShort</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ConnectionTuneOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655390</body>
</methods>


<methods>
<class-id>Amqp08ConnectionTuneOk</class-id> <category>accessing</category>

<body package="Amqp">channelMax		^channelMax</body>

<body package="Amqp">heartbeat: aValue		heartbeat := aValue</body>

<body package="Amqp">heartbeat		^heartbeat</body>

<body package="Amqp">frameMax: aValue		frameMax := aValue</body>

<body package="Amqp">channelMax: aValue		channelMax := aValue</body>

<body package="Amqp">frameMax		^frameMax</body>
</methods>

<methods>
<class-id>Amqp08ConnectionTuneOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	channelMax := codec nextShort.	frameMax := codec nextLong.	heartbeat := codec nextShort</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655391</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: channelMax.	codec nextLongPut: frameMax.	codec nextShortPut: heartbeat</body>
</methods>


<methods>
<class-id>Amqp08DtxSelect</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08DtxSelectOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^6553610</body>
</methods>


<methods>
<class-id>Amqp08DtxSelectOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^6553611</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08DtxStart</class-id> <category>accessing</category>

<body package="Amqp">dtxIdentifier: aValue		dtxIdentifier := aValue</body>

<body package="Amqp">dtxIdentifier		^dtxIdentifier</body>
</methods>

<methods>
<class-id>Amqp08DtxStart</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: dtxIdentifier</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08DtxStartOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	dtxIdentifier := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^6553620</body>
</methods>


<methods>
<class-id>Amqp08DtxStartOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^6553621</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08ExchangeDeclare</class-id> <category>accessing</category>

<body package="Amqp">durable		^durable</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">autoDelete: aValue		autoDelete := aValue</body>

<body package="Amqp">durable: aValue		durable := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">passive: aValue		passive := aValue</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">passive		^passive</body>

<body package="Amqp">internal		^internal</body>

<body package="Amqp">type: aValue		type := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">type		^type</body>

<body package="Amqp">autoDelete		^autoDelete</body>

<body package="Amqp">internal: aValue		internal := aValue</body>
</methods>

<methods>
<class-id>Amqp08ExchangeDeclare</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: exchange.	codec nextShortstrPut: type.	bitBuffer := 0.	(passive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(durable ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(autoDelete ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(internal ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 16].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	exchange := codec nextShortstr.	type := codec nextShortstr.	bitBuffer := codec nextOctet.	passive := (bitBuffer bitAnd: 1) ~= 0.	durable := (bitBuffer bitAnd: 2) ~= 0.	autoDelete := (bitBuffer bitAnd: 4) ~= 0.	internal := (bitBuffer bitAnd: 8) ~= 0.	nowait := (bitBuffer bitAnd: 16) ~= 0.	arguments := codec nextTable</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ExchangeDeclareOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^2621450</body>
</methods>


<methods>
<class-id>Amqp08ExchangeDeclareOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^2621451</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08ExchangeDelete</class-id> <category>accessing</category>

<body package="Amqp">ifUnused		^ifUnused</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">ifUnused: aValue		ifUnused := aValue</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>
</methods>

<methods>
<class-id>Amqp08ExchangeDelete</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08ExchangeDeleteOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^2621460</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: exchange.	bitBuffer := 0.	(ifUnused ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	exchange := codec nextShortstr.	bitBuffer := codec nextOctet.	ifUnused := (bitBuffer bitAnd: 1) ~= 0.	nowait := (bitBuffer bitAnd: 2) ~= 0</body>
</methods>


<methods>
<class-id>Amqp08ExchangeDeleteOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^2621461</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileAck</class-id> <category>accessing</category>

<body package="Amqp">multiple: aValue		multiple := aValue</body>

<body package="Amqp">multiple		^multiple</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileAck</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	multiple := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587610</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(multiple ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>
</methods>


<methods>
<class-id>Amqp08FileCancel</class-id> <category>accessing</category>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">nowait		^nowait</body>
</methods>

<methods>
<class-id>Amqp08FileCancel</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08FileCancelOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587550</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	nowait := (bitBuffer bitAnd: 1) ~= 0</body>
</methods>


<methods>
<class-id>Amqp08FileCancelOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileCancelOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587551</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08FileConsume</class-id> <category>accessing</category>

<body package="Amqp">noAck: aValue		noAck := aValue</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">noAck		^noAck</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">noLocal		^noLocal</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">noLocal: aValue		noLocal := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileConsume</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587540</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(noLocal ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(noAck ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	noLocal := (bitBuffer bitAnd: 1) ~= 0.	noAck := (bitBuffer bitAnd: 2) ~= 0.	exclusive := (bitBuffer bitAnd: 4) ~= 0.	nowait := (bitBuffer bitAnd: 8) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08FileConsumeOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileConsumeOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp08FileConsumeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587541</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileDeliver</class-id> <category>accessing</category>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">redelivered		^redelivered</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">identifier		^identifier</body>

<body package="Amqp">redelivered: aValue		redelivered := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">identifier: aValue		identifier := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileDeliver</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587600</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(redelivered ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	codec nextShortstrPut: identifier</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	redelivered := (bitBuffer bitAnd: 1) ~= 0.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	identifier := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileOpen</class-id> <category>accessing</category>

<body package="Amqp">identifier: aValue		identifier := aValue</body>

<body package="Amqp">contentSize		^contentSize</body>

<body package="Amqp">contentSize: aValue		contentSize := aValue</body>

<body package="Amqp">identifier		^identifier</body>
</methods>

<methods>
<class-id>Amqp08FileOpen</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	identifier := codec nextShortstr.	contentSize := codec nextLonglong</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08FileOpenOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587560</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: identifier.	codec nextLonglongPut: contentSize</body>
</methods>


<methods>
<class-id>Amqp08FileOpenOk</class-id> <category>accessing</category>

<body package="Amqp">stagedSize		^stagedSize</body>

<body package="Amqp">stagedSize: aValue		stagedSize := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileOpenOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587561</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: stagedSize</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08FileStage</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	stagedSize := codec nextLonglong</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FilePublish</class-id> <category>accessing</category>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">identifier: aValue		identifier := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">mandatory		^mandatory</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">mandatory: aValue		mandatory := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">immediate		^immediate</body>

<body package="Amqp">immediate: aValue		immediate := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">identifier		^identifier</body>
</methods>

<methods>
<class-id>Amqp08FilePublish</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587580</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(mandatory ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(immediate ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: identifier</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	mandatory := (bitBuffer bitAnd: 1) ~= 0.	immediate := (bitBuffer bitAnd: 2) ~= 0.	identifier := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileQos</class-id> <category>accessing</category>

<body package="Amqp">prefetchCount		^prefetchCount</body>

<body package="Amqp">prefetchSize		^prefetchSize</body>

<body package="Amqp">global: aValue		global := aValue</body>

<body package="Amqp">prefetchCount: aValue		prefetchCount := aValue</body>

<body package="Amqp">prefetchSize: aValue		prefetchSize := aValue</body>

<body package="Amqp">global		^global</body>
</methods>

<methods>
<class-id>Amqp08FileQos</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08FileQosOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587530</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: prefetchSize.	codec nextShortPut: prefetchCount.	bitBuffer := 0.	(global ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	prefetchSize := codec nextLong.	prefetchCount := codec nextShort.	bitBuffer := codec nextOctet.	global := (bitBuffer bitAnd: 1) ~= 0</body>
</methods>


<methods>
<class-id>Amqp08FileQosOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^4587531</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08FileReject</class-id> <category>accessing</category>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">requeue		^requeue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">requeue: aValue		requeue := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileReject</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^4587620</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08FileReturn</class-id> <category>accessing</category>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileReturn</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^4587590</body>
</methods>


<methods>
<class-id>Amqp08FileStage</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^4587570</body>
</methods>


<methods>
<class-id>Amqp08QueueBind</class-id> <category>accessing</category>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">ticket		^ticket</body>
</methods>

<methods>
<class-id>Amqp08QueueBind</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	nowait := (bitBuffer bitAnd: 1) ~= 0.	arguments := codec nextTable</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276820</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08QueueBindOk</body>
</methods>


<methods>
<class-id>Amqp08QueueBindOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276821</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08QueueDeclare</class-id> <category>accessing</category>

<body package="Amqp">autoDelete: aValue		autoDelete := aValue</body>

<body package="Amqp">durable: aValue		durable := aValue</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">passive: aValue		passive := aValue</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">passive		^passive</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">autoDelete		^autoDelete</body>

<body package="Amqp">durable		^durable</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">ticket		^ticket</body>
</methods>

<methods>
<class-id>Amqp08QueueDeclare</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276810</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	bitBuffer := 0.	(passive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(durable ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(autoDelete ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 16].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08QueueDeclareOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	passive := (bitBuffer bitAnd: 1) ~= 0.	durable := (bitBuffer bitAnd: 2) ~= 0.	exclusive := (bitBuffer bitAnd: 4) ~= 0.	autoDelete := (bitBuffer bitAnd: 8) ~= 0.	nowait := (bitBuffer bitAnd: 16) ~= 0.	arguments := codec nextTable</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08QueueDeclareOk</class-id> <category>accessing</category>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">consumerCount		^consumerCount</body>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">consumerCount: aValue		consumerCount := aValue</body>
</methods>

<methods>
<class-id>Amqp08QueueDeclareOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276811</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: queue.	codec nextLongPut: messageCount.	codec nextLongPut: consumerCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	queue := codec nextShortstr.	messageCount := codec nextLong.	consumerCount := codec nextLong</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08QueueDelete</class-id> <category>accessing</category>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">ifUnused: aValue		ifUnused := aValue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">ifUnused		^ifUnused</body>

<body package="Amqp">ifEmpty		^ifEmpty</body>

<body package="Amqp">ifEmpty: aValue		ifEmpty := aValue</body>
</methods>

<methods>
<class-id>Amqp08QueueDelete</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276840</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	bitBuffer := 0.	(ifUnused ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(ifEmpty ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	ifUnused := (bitBuffer bitAnd: 1) ~= 0.	ifEmpty := (bitBuffer bitAnd: 2) ~= 0.	nowait := (bitBuffer bitAnd: 4) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08QueueDeleteOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08QueueDeleteOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>
</methods>

<methods>
<class-id>Amqp08QueueDeleteOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276841</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: messageCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	messageCount := codec nextLong</body>
</methods>


<methods>
<class-id>Amqp08QueuePurge</class-id> <category>accessing</category>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">nowait		^nowait</body>
</methods>

<methods>
<class-id>Amqp08QueuePurge</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276830</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	bitBuffer := 0.	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	nowait := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08QueuePurgeOk</body>
</methods>


<methods>
<class-id>Amqp08QueuePurgeOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>
</methods>

<methods>
<class-id>Amqp08QueuePurgeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: messageCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	messageCount := codec nextLong</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276831</body>
</methods>


<methods>
<class-id>Amqp08StreamCancel</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>
</methods>

<methods>
<class-id>Amqp08StreamCancel</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5242910</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	nowait := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08StreamCancelOk</body>
</methods>


<methods>
<class-id>Amqp08StreamCancelOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp08StreamCancelOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5242911</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>
</methods>


<methods>
<class-id>Amqp08StreamConsume</class-id> <category>accessing</category>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">nowait		^nowait</body>

<body package="Amqp">nowait: aValue		nowait := aValue</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">noLocal		^noLocal</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">noLocal: aValue		noLocal := aValue</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">exclusive		^exclusive</body>
</methods>

<methods>
<class-id>Amqp08StreamConsume</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5242900</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: queue.	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(noLocal ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(nowait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	queue := codec nextShortstr.	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	noLocal := (bitBuffer bitAnd: 1) ~= 0.	exclusive := (bitBuffer bitAnd: 2) ~= 0.	nowait := (bitBuffer bitAnd: 4) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08StreamConsumeOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08StreamConsumeOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp08StreamConsumeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5242901</body>
</methods>


<methods>
<class-id>Amqp08StreamDeliver</class-id> <category>accessing</category>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>
</methods>

<methods>
<class-id>Amqp08StreamDeliver</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5242940</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	codec nextLonglongPut: deliveryTag.	codec nextShortstrPut: exchange.	codec nextShortstrPut: queue</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	deliveryTag := codec nextLonglong.	exchange := codec nextShortstr.	queue := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08StreamPublish</class-id> <category>accessing</category>

<body package="Amqp">ticket		^ticket</body>

<body package="Amqp">immediate: aValue		immediate := aValue</body>

<body package="Amqp">immediate		^immediate</body>

<body package="Amqp">ticket: aValue		ticket := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">mandatory		^mandatory</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">mandatory: aValue		mandatory := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>
</methods>

<methods>
<class-id>Amqp08StreamPublish</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^5242920</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: ticket.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(mandatory ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(immediate ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	ticket := codec nextShort.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	mandatory := (bitBuffer bitAnd: 1) ~= 0.	immediate := (bitBuffer bitAnd: 2) ~= 0</body>
</methods>


<methods>
<class-id>Amqp08StreamQos</class-id> <category>accessing</category>

<body package="Amqp">global		^global</body>

<body package="Amqp">prefetchSize: aValue		prefetchSize := aValue</body>

<body package="Amqp">consumeRate: aValue		consumeRate := aValue</body>

<body package="Amqp">consumeRate		^consumeRate</body>

<body package="Amqp">prefetchCount		^prefetchCount</body>

<body package="Amqp">prefetchSize		^prefetchSize</body>

<body package="Amqp">global: aValue		global := aValue</body>

<body package="Amqp">prefetchCount: aValue		prefetchCount := aValue</body>
</methods>

<methods>
<class-id>Amqp08StreamQos</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5242890</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: prefetchSize.	codec nextShortPut: prefetchCount.	codec nextLongPut: consumeRate.	bitBuffer := 0.	(global ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	prefetchSize := codec nextLong.	prefetchCount := codec nextShort.	consumeRate := codec nextLong.	bitBuffer := codec nextOctet.	global := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08StreamQosOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08StreamQosOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5242891</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp08StreamReturn</class-id> <category>accessing</category>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>
</methods>

<methods>
<class-id>Amqp08StreamReturn</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5242930</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08TestContent</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^7864360</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TestContentOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08TestContentOk</class-id> <category>accessing</category>

<body package="Amqp">contentChecksum: aValue		contentChecksum := aValue</body>

<body package="Amqp">contentChecksum		^contentChecksum</body>
</methods>

<methods>
<class-id>Amqp08TestContentOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^7864361</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: contentChecksum</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	contentChecksum := codec nextLong</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08TestInteger</class-id> <category>accessing</category>

<body package="Amqp">integer1		^integer1</body>

<body package="Amqp">integer1: aValue		integer1 := aValue</body>

<body package="Amqp">integer3: aValue		integer3 := aValue</body>

<body package="Amqp">integer4: aValue		integer4 := aValue</body>

<body package="Amqp">operation		^operation</body>

<body package="Amqp">integer2: aValue		integer2 := aValue</body>

<body package="Amqp">operation: aValue		operation := aValue</body>

<body package="Amqp">integer2		^integer2</body>

<body package="Amqp">integer3		^integer3</body>

<body package="Amqp">integer4		^integer4</body>
</methods>

<methods>
<class-id>Amqp08TestInteger</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	integer1 := codec nextOctet.	integer2 := codec nextShort.	integer3 := codec nextLong.	integer4 := codec nextLonglong.	operation := codec nextOctet</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TestIntegerOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^7864330</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextOctetPut: integer1.	codec nextShortPut: integer2.	codec nextLongPut: integer3.	codec nextLonglongPut: integer4.	codec nextOctetPut: operation</body>
</methods>


<methods>
<class-id>Amqp08TestIntegerOk</class-id> <category>accessing</category>

<body package="Amqp">result		^result</body>

<body package="Amqp">result: aValue		result := aValue</body>
</methods>

<methods>
<class-id>Amqp08TestIntegerOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: result</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	result := codec nextLonglong</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^7864331</body>
</methods>


<methods>
<class-id>Amqp08TestString</class-id> <category>accessing</category>

<body package="Amqp">string2: aValue		string2 := aValue</body>

<body package="Amqp">operation: aValue		operation := aValue</body>

<body package="Amqp">string1		^string1</body>

<body package="Amqp">operation		^operation</body>

<body package="Amqp">string1: aValue		string1 := aValue</body>

<body package="Amqp">string2		^string2</body>
</methods>

<methods>
<class-id>Amqp08TestString</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	string1 := codec nextShortstr.	string2 := codec nextLongstr.	operation := codec nextOctet</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TestStringOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^7864340</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: string1.	codec nextLongstrPut: string2.	codec nextOctetPut: operation</body>
</methods>


<methods>
<class-id>Amqp08TestStringOk</class-id> <category>accessing</category>

<body package="Amqp">result		^result</body>

<body package="Amqp">result: aValue		result := aValue</body>
</methods>

<methods>
<class-id>Amqp08TestStringOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	result := codec nextLongstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^7864341</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: result</body>
</methods>


<methods>
<class-id>Amqp08TestTable</class-id> <category>accessing</category>

<body package="Amqp">table: aValue		table := aValue</body>

<body package="Amqp">stringOp		^stringOp</body>

<body package="Amqp">integerOp		^integerOp</body>

<body package="Amqp">stringOp: aValue		stringOp := aValue</body>

<body package="Amqp">integerOp: aValue		integerOp := aValue</body>

<body package="Amqp">table		^table</body>
</methods>

<methods>
<class-id>Amqp08TestTable</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^7864350</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextTablePut: table.	codec nextOctetPut: integerOp.	codec nextOctetPut: stringOp</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	table := codec nextTable.	integerOp := codec nextOctet.	stringOp := codec nextOctet</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TestTableOk</body>
</methods>


<methods>
<class-id>Amqp08TestTableOk</class-id> <category>accessing</category>

<body package="Amqp">integerResult		^integerResult</body>

<body package="Amqp">integerResult: aValue		integerResult := aValue</body>

<body package="Amqp">stringResult: aValue		stringResult := aValue</body>

<body package="Amqp">stringResult		^stringResult</body>
</methods>

<methods>
<class-id>Amqp08TestTableOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^7864351</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: integerResult.	codec nextLongstrPut: stringResult</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	integerResult := codec nextLonglong.	stringResult := codec nextLongstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08TunnelRequest</class-id> <category>accessing</category>

<body package="Amqp">metaData: aValue		metaData := aValue</body>

<body package="Amqp">metaData		^metaData</body>
</methods>

<methods>
<class-id>Amqp08TunnelRequest</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^7208970</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextTablePut: metaData</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	metaData := codec nextTable</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp08TxCommit</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5898260</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TxCommitOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08TxCommitOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5898261</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp08TxRollback</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TxRollbackOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898270</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp08TxRollbackOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898271</body>
</methods>


<methods>
<class-id>Amqp08TxSelect</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp08TxSelectOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898250</body>
</methods>


<methods>
<class-id>Amqp08TxSelectOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898251</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091BasicAck</class-id> <category>accessing</category>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">multiple: aValue		multiple := aValue</body>

<body package="Amqp">multiple		^multiple</body>
</methods>

<methods>
<class-id>Amqp091BasicAck</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932240</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(multiple ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	multiple := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicCancel</class-id> <category>accessing</category>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">noWait: aValue		noWait := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicCancel</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932190</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	noWait := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091BasicCancelOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicCancelOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicCancelOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932191</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091BasicConsume</class-id> <category>accessing</category>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">noAck		^noAck</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">noLocal		^noLocal</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>

<body package="Amqp">noLocal: aValue		noLocal := aValue</body>

<body package="Amqp">noAck: aValue		noAck := aValue</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">consumerTag		^consumerTag</body>
</methods>

<methods>
<class-id>Amqp091BasicConsume</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932180</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	codec nextShortstrPut: consumerTag.	bitBuffer := 0.	(noLocal ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(noAck ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091BasicConsumeOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	consumerTag := codec nextShortstr.	bitBuffer := codec nextOctet.	noLocal := (bitBuffer bitAnd: 1) ~= 0.	noAck := (bitBuffer bitAnd: 2) ~= 0.	exclusive := (bitBuffer bitAnd: 4) ~= 0.	noWait := (bitBuffer bitAnd: 8) ~= 0.	arguments := codec nextTable</body>
</methods>


<methods>
<class-id>Amqp091BasicConsumeOk</class-id> <category>accessing</category>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicConsumeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932181</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicDeliver</class-id> <category>accessing</category>

<body package="Amqp">consumerTag		^consumerTag</body>

<body package="Amqp">redelivered: aValue		redelivered := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">redelivered		^redelivered</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">consumerTag: aValue		consumerTag := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicDeliver</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^3932220</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: consumerTag.	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(redelivered ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	consumerTag := codec nextShortstr.	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	redelivered := (bitBuffer bitAnd: 1) ~= 0.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>
</methods>


<methods>
<class-id>Amqp091BasicGet</class-id> <category>accessing</category>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">noAck		^noAck</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">noAck: aValue		noAck := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicGet</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932230</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	bitBuffer := 0.	(noAck ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091BasicGetEmpty with: Amqp091BasicGetOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	noAck := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicGetEmpty</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932232</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: nil</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicGetOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">redelivered		^redelivered</body>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">redelivered: aValue		redelivered := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicGetOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932231</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(redelivered ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	codec nextLongPut: messageCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	redelivered := (bitBuffer bitAnd: 1) ~= 0.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	messageCount := codec nextLong</body>

<body package="Amqp">hasContents		^true</body>
</methods>


<methods>
<class-id>Amqp091BasicPublish</class-id> <category>accessing</category>

<body package="Amqp">immediate: aValue		immediate := aValue</body>

<body package="Amqp">immediate		^immediate</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">mandatory		^mandatory</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">mandatory: aValue		mandatory := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>
</methods>

<methods>
<class-id>Amqp091BasicPublish</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	mandatory := (bitBuffer bitAnd: 1) ~= 0.	immediate := (bitBuffer bitAnd: 2) ~= 0</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^3932200</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(mandatory ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(immediate ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer</body>
</methods>


<methods>
<class-id>Amqp091BasicQos</class-id> <category>accessing</category>

<body package="Amqp">global: aValue		global := aValue</body>

<body package="Amqp">prefetchCount: aValue		prefetchCount := aValue</body>

<body package="Amqp">global		^global</body>

<body package="Amqp">prefetchSize: aValue		prefetchSize := aValue</body>

<body package="Amqp">prefetchCount		^prefetchCount</body>

<body package="Amqp">prefetchSize		^prefetchSize</body>
</methods>

<methods>
<class-id>Amqp091BasicQos</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932170</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: prefetchSize.	codec nextShortPut: prefetchCount.	bitBuffer := 0.	(global ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091BasicQosOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	prefetchSize := codec nextLong.	prefetchCount := codec nextShort.	bitBuffer := codec nextOctet.	global := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicQosOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932171</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091BasicRecover</class-id> <category>accessing</category>

<body package="Amqp">requeue		^requeue</body>

<body package="Amqp">requeue: aValue		requeue := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicRecover</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932270</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091BasicRecoverAsync</class-id> <category>accessing</category>

<body package="Amqp">requeue: aValue		requeue := aValue</body>

<body package="Amqp">requeue		^requeue</body>
</methods>

<methods>
<class-id>Amqp091BasicRecoverAsync</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3932260</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091BasicRecoverOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932271</body>
</methods>


<methods>
<class-id>Amqp091BasicReject</class-id> <category>accessing</category>

<body package="Amqp">deliveryTag: aValue		deliveryTag := aValue</body>

<body package="Amqp">requeue: aValue		requeue := aValue</body>

<body package="Amqp">deliveryTag		^deliveryTag</body>

<body package="Amqp">requeue		^requeue</body>
</methods>

<methods>
<class-id>Amqp091BasicReject</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLonglongPut: deliveryTag.	bitBuffer := 0.	(requeue ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	deliveryTag := codec nextLonglong.	bitBuffer := codec nextOctet.	requeue := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3932250</body>
</methods>


<methods>
<class-id>Amqp091BasicReturn</class-id> <category>accessing</category>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicReturn</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^true</body>

<body package="Amqp">codecMethodId		^3932210</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr</body>
</methods>


<methods>
<class-id>Amqp091ChannelClose</class-id> <category>accessing</category>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>

<body package="Amqp">methodId: aValue		methodId := aValue</body>

<body package="Amqp">methodId		^methodId</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">classId: aValue		classId := aValue</body>

<body package="Amqp">classId		^classId</body>

<body package="Amqp">replyCode		^replyCode</body>
</methods>

<methods>
<class-id>Amqp091ChannelClose</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310760</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortPut: classId.	codec nextShortPut: methodId</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ChannelCloseOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	classId := codec nextShort.	methodId := codec nextShort</body>
</methods>


<methods>
<class-id>Amqp091ChannelCloseOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310761</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091ChannelFlow</class-id> <category>accessing</category>

<body package="Amqp">active: aValue		active := aValue</body>

<body package="Amqp">active		^active</body>
</methods>

<methods>
<class-id>Amqp091ChannelFlow</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(active ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	active := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ChannelFlowOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310740</body>
</methods>


<methods>
<class-id>Amqp091ChannelFlowOk</class-id> <category>accessing</category>

<body package="Amqp">active		^active</body>

<body package="Amqp">active: aValue		active := aValue</body>
</methods>

<methods>
<class-id>Amqp091ChannelFlowOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	bitBuffer := 0.	(active ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	bitBuffer := codec nextOctet.	active := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310741</body>
</methods>


<methods>
<class-id>Amqp091ChannelOpen</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: nil</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ChannelOpenOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^1310730</body>
</methods>


<methods>
<class-id>Amqp091ChannelOpenOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^1310731</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: nil</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextLongstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionClose</class-id> <category>accessing</category>

<body package="Amqp">methodId: aValue		methodId := aValue</body>

<body package="Amqp">methodId		^methodId</body>

<body package="Amqp">replyText		^replyText</body>

<body package="Amqp">classId: aValue		classId := aValue</body>

<body package="Amqp">classId		^classId</body>

<body package="Amqp">replyCode		^replyCode</body>

<body package="Amqp">replyCode: aValue		replyCode := aValue</body>

<body package="Amqp">replyText: aValue		replyText := aValue</body>
</methods>

<methods>
<class-id>Amqp091ConnectionClose</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: replyCode.	codec nextShortstrPut: replyText.	codec nextShortPut: classId.	codec nextShortPut: methodId</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	replyCode := codec nextShort.	replyText := codec nextShortstr.	classId := codec nextShort.	methodId := codec nextShort</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ConnectionCloseOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655410</body>
</methods>


<methods>
<class-id>Amqp091ConnectionCloseOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655411</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091ConnectionOpen</class-id> <category>accessing</category>

<body package="Amqp">virtualHost: aValue		virtualHost := aValue</body>

<body package="Amqp">virtualHost		^virtualHost</body>
</methods>

<methods>
<class-id>Amqp091ConnectionOpen</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655400</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: virtualHost.	codec nextShortstrPut: nil.	bitBuffer := 0.	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	virtualHost := codec nextShortstr.	codec nextShortstr.	bitBuffer := codec nextOctet</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ConnectionOpenOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionOpenOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655401</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: nil</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091ConnectionSecure</class-id> <category>accessing</category>

<body package="Amqp">challenge: aValue		challenge := aValue</body>

<body package="Amqp">challenge		^challenge</body>
</methods>

<methods>
<class-id>Amqp091ConnectionSecure</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655380</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: challenge</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ConnectionSecureOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	challenge := codec nextLongstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionSecureOk</class-id> <category>accessing</category>

<body package="Amqp">response		^response</body>

<body package="Amqp">response: aValue		response := aValue</body>
</methods>

<methods>
<class-id>Amqp091ConnectionSecureOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655381</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongstrPut: response</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	response := codec nextLongstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionStart</class-id> <category>accessing</category>

<body package="Amqp">versionMinor		^versionMinor</body>

<body package="Amqp">serverProperties: aValue		serverProperties := aValue</body>

<body package="Amqp">mechanisms		^mechanisms</body>

<body package="Amqp">locales: aValue		locales := aValue</body>

<body package="Amqp">versionMajor		^versionMajor</body>

<body package="Amqp">locales		^locales</body>

<body package="Amqp">versionMinor: aValue		versionMinor := aValue</body>

<body package="Amqp">mechanisms: aValue		mechanisms := aValue</body>

<body package="Amqp">versionMajor: aValue		versionMajor := aValue</body>

<body package="Amqp">serverProperties		^serverProperties</body>
</methods>

<methods>
<class-id>Amqp091ConnectionStart</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655370</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextOctetPut: versionMajor.	codec nextOctetPut: versionMinor.	codec nextTablePut: serverProperties.	codec nextLongstrPut: mechanisms.	codec nextLongstrPut: locales</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ConnectionStartOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	versionMajor := codec nextOctet.	versionMinor := codec nextOctet.	serverProperties := codec nextTable.	mechanisms := codec nextLongstr.	locales := codec nextLongstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionStartOk</class-id> <category>accessing</category>

<body package="Amqp">response: aValue		response := aValue</body>

<body package="Amqp">mechanism: aValue		mechanism := aValue</body>

<body package="Amqp">clientProperties		^clientProperties</body>

<body package="Amqp">locale: aValue		locale := aValue</body>

<body package="Amqp">mechanism		^mechanism</body>

<body package="Amqp">locale		^locale</body>

<body package="Amqp">response		^response</body>

<body package="Amqp">clientProperties: aValue		clientProperties := aValue</body>
</methods>

<methods>
<class-id>Amqp091ConnectionStartOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^655371</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextTablePut: clientProperties.	codec nextShortstrPut: mechanism.	codec nextLongstrPut: response.	codec nextShortstrPut: locale</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	clientProperties := codec nextTable.	mechanism := codec nextShortstr.	response := codec nextLongstr.	locale := codec nextShortstr</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ConnectionTune</class-id> <category>accessing</category>

<body package="Amqp">channelMax		^channelMax</body>

<body package="Amqp">heartbeat: aValue		heartbeat := aValue</body>

<body package="Amqp">heartbeat		^heartbeat</body>

<body package="Amqp">frameMax: aValue		frameMax := aValue</body>

<body package="Amqp">frameMax		^frameMax</body>

<body package="Amqp">channelMax: aValue		channelMax := aValue</body>
</methods>

<methods>
<class-id>Amqp091ConnectionTune</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ConnectionTuneOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655390</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: channelMax.	codec nextLongPut: frameMax.	codec nextShortPut: heartbeat</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	channelMax := codec nextShort.	frameMax := codec nextLong.	heartbeat := codec nextShort</body>
</methods>


<methods>
<class-id>Amqp091ConnectionTuneOk</class-id> <category>accessing</category>

<body package="Amqp">heartbeat: aValue		heartbeat := aValue</body>

<body package="Amqp">heartbeat		^heartbeat</body>

<body package="Amqp">frameMax: aValue		frameMax := aValue</body>

<body package="Amqp">frameMax		^frameMax</body>

<body package="Amqp">channelMax: aValue		channelMax := aValue</body>

<body package="Amqp">channelMax		^channelMax</body>
</methods>

<methods>
<class-id>Amqp091ConnectionTuneOk</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: channelMax.	codec nextLongPut: frameMax.	codec nextShortPut: heartbeat</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	channelMax := codec nextShort.	frameMax := codec nextLong.	heartbeat := codec nextShort</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^655391</body>
</methods>


<methods>
<class-id>Amqp091ExchangeDeclare</class-id> <category>as yet unclassified</category>

<body package="Amqp">autoDelete: aBoolean</body>
</methods>

<methods>
<class-id>Amqp091ExchangeDeclare</class-id> <category>accessing</category>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">type: aValue		type := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">durable: aValue		durable := aValue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">passive		^passive</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">passive: aValue		passive := aValue</body>

<body package="Amqp">durable		^durable</body>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">type		^type</body>
</methods>

<methods>
<class-id>Amqp091ExchangeDeclare</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^2621450</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: exchange.	codec nextShortstrPut: type.	bitBuffer := 0.	(passive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(durable ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 16].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	exchange := codec nextShortstr.	type := codec nextShortstr.	bitBuffer := codec nextOctet.	passive := (bitBuffer bitAnd: 1) ~= 0.	durable := (bitBuffer bitAnd: 2) ~= 0.	noWait := (bitBuffer bitAnd: 16) ~= 0.	arguments := codec nextTable</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ExchangeDeclareOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ExchangeDeclareOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^2621451</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ExchangeDelete</class-id> <category>accessing</category>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">ifUnused		^ifUnused</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">ifUnused: aValue		ifUnused := aValue</body>

<body package="Amqp">noWait		^noWait</body>
</methods>

<methods>
<class-id>Amqp091ExchangeDelete</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^2621460</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: exchange.	bitBuffer := 0.	(ifUnused ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	exchange := codec nextShortstr.	bitBuffer := codec nextOctet.	ifUnused := (bitBuffer bitAnd: 1) ~= 0.	noWait := (bitBuffer bitAnd: 2) ~= 0</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091ExchangeDeleteOk</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091ExchangeDeleteOk</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^2621461</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp091QueueBind</class-id> <category>accessing</category>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">queue: aValue		queue := aValue</body>
</methods>

<methods>
<class-id>Amqp091QueueBind</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	bitBuffer := codec nextOctet.	noWait := (bitBuffer bitAnd: 1) ~= 0.	arguments := codec nextTable</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276820</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	bitBuffer := 0.	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091QueueBindOk</body>
</methods>


<methods>
<class-id>Amqp091QueueBindOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276821</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091QueueDeclare</class-id> <category>accessing</category>

<body package="Amqp">passive: aValue		passive := aValue</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">exclusive		^exclusive</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">passive		^passive</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">autoDelete		^autoDelete</body>

<body package="Amqp">durable		^durable</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">autoDelete: aValue		autoDelete := aValue</body>

<body package="Amqp">durable: aValue		durable := aValue</body>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">exclusive: aValue		exclusive := aValue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>
</methods>

<methods>
<class-id>Amqp091QueueDeclare</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091QueueDeclareOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276810</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	bitBuffer := 0.	(passive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(durable ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(exclusive ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	(autoDelete ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 8].	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 16].	codec nextOctetPut: bitBuffer.	codec nextTablePut: arguments</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	passive := (bitBuffer bitAnd: 1) ~= 0.	durable := (bitBuffer bitAnd: 2) ~= 0.	exclusive := (bitBuffer bitAnd: 4) ~= 0.	autoDelete := (bitBuffer bitAnd: 8) ~= 0.	noWait := (bitBuffer bitAnd: 16) ~= 0.	arguments := codec nextTable</body>
</methods>


<methods>
<class-id>Amqp091QueueDeclareOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">consumerCount: aValue		consumerCount := aValue</body>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">consumerCount		^consumerCount</body>
</methods>

<methods>
<class-id>Amqp091QueueDeclareOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	queue := codec nextShortstr.	messageCount := codec nextLong.	consumerCount := codec nextLong</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276811</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortstrPut: queue.	codec nextLongPut: messageCount.	codec nextLongPut: consumerCount</body>
</methods>


<methods>
<class-id>Amqp091QueueDelete</class-id> <category>accessing</category>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">ifUnused: aValue		ifUnused := aValue</body>

<body package="Amqp">noWait		^noWait</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">ifEmpty		^ifEmpty</body>

<body package="Amqp">ifUnused		^ifUnused</body>

<body package="Amqp">ifEmpty: aValue		ifEmpty := aValue</body>
</methods>

<methods>
<class-id>Amqp091QueueDelete</class-id> <category>AMQP codec</category>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091QueueDeleteOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	ifUnused := (bitBuffer bitAnd: 1) ~= 0.	ifEmpty := (bitBuffer bitAnd: 2) ~= 0.	noWait := (bitBuffer bitAnd: 4) ~= 0</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276840</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	bitBuffer := 0.	(ifUnused ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	(ifEmpty ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 2].	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 4].	codec nextOctetPut: bitBuffer</body>
</methods>


<methods>
<class-id>Amqp091QueueDeleteOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>

<body package="Amqp">messageCount		^messageCount</body>
</methods>

<methods>
<class-id>Amqp091QueueDeleteOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276841</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: messageCount</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	messageCount := codec nextLong</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091QueuePurge</class-id> <category>accessing</category>

<body package="Amqp">noWait: aValue		noWait := aValue</body>

<body package="Amqp">queue: aValue		queue := aValue</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">noWait		^noWait</body>
</methods>

<methods>
<class-id>Amqp091QueuePurge</class-id> <category>AMQP codec</category>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	bitBuffer := 0.	(noWait ifNil: [false]) ifTrue: [bitBuffer := bitBuffer bitOr: 1].	codec nextOctetPut: bitBuffer</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091QueuePurgeOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	bitBuffer := codec nextOctet.	noWait := (bitBuffer bitAnd: 1) ~= 0</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276830</body>
</methods>


<methods>
<class-id>Amqp091QueuePurgeOk</class-id> <category>accessing</category>

<body package="Amqp">messageCount		^messageCount</body>

<body package="Amqp">messageCount: aValue		messageCount := aValue</body>
</methods>

<methods>
<class-id>Amqp091QueuePurgeOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^3276831</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextLongPut: messageCount</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	messageCount := codec nextLong</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091QueueUnbind</class-id> <category>accessing</category>

<body package="Amqp">routingKey: aValue		routingKey := aValue</body>

<body package="Amqp">exchange: aValue		exchange := aValue</body>

<body package="Amqp">exchange		^exchange</body>

<body package="Amqp">queue		^queue</body>

<body package="Amqp">arguments: aValue		arguments := aValue</body>

<body package="Amqp">routingKey		^routingKey</body>

<body package="Amqp">arguments		^arguments</body>

<body package="Amqp">queue: aValue		queue := aValue</body>
</methods>

<methods>
<class-id>Amqp091QueueUnbind</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276850</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |	codec nextShortPut: 0.	codec nextShortstrPut: queue.	codec nextShortstrPut: exchange.	codec nextShortstrPut: routingKey.	codec nextTablePut: arguments</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |	codec nextShort.	queue := codec nextShortstr.	exchange := codec nextShortstr.	routingKey := codec nextShortstr.	arguments := codec nextTable</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091QueueUnbindOk</body>
</methods>


<methods>
<class-id>Amqp091QueueUnbindOk</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^3276851</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>
</methods>


<methods>
<class-id>Amqp091TxCommit</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091TxCommitOk</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898260</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp091TxCommitOk</class-id> <category>AMQP codec</category>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898261</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp091TxRollback</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5898270</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091TxRollbackOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091TxRollbackOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5898271</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>Amqp091TxSelect</class-id> <category>AMQP codec</category>

<body package="Amqp">hasContents		^false</body>

<body package="Amqp">codecMethodId		^5898250</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^Array with: Amqp091TxSelectOk</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>
</methods>


<methods>
<class-id>Amqp091TxSelectOk</class-id> <category>AMQP codec</category>

<body package="Amqp">codecMethodId		^5898251</body>

<body package="Amqp">encodeOn: codec		| bitBuffer |</body>

<body package="Amqp">decodeFrom: codec		| bitBuffer |</body>

<body package="Amqp">acceptableResponseClasses		^#()</body>

<body package="Amqp">hasContents		^false</body>
</methods>


<methods>
<class-id>AmqpProtocolProperties</class-id> <category>as yet unclassified</category>

<body package="Amqp">encodeFlags: flagsToEncode on: codec		| flags remainder partialFlags |	flags := flagsToEncode.	[remainder := flags bitShift: -16.	partialFlags := flags bitAnd: 16rFFFE.	remainder = 0 ifFalse: [partialFlags := partialFlags bitOr: 1].	codec nextShortPut: partialFlags.	flags := remainder.	flags = 0 ifTrue: [^self]] repeat</body>

<body package="Amqp">codecClassId		self subclassResponsibility</body>

<body package="Amqp">encodeOn: codec		self subclassResponsibility</body>

<body package="Amqp">decodeFrom: codec		self subclassResponsibility</body>

<body package="Amqp">decodeFlagsFrom: codec		| flags flagWordIndex partialFlags |	flags := 0.	flagWordIndex := 0.	[partialFlags := codec nextShort.	flags := flags bitOr: (partialFlags bitShift: flagWordIndex * 16).	(partialFlags bitAnd: 1) = 0 ifTrue: [^flags].	flagWordIndex := flagWordIndex + 1] repeat</body>
</methods>


<methods>
<class-id>Amqp08BasicProperties</class-id> <category>accessing</category>

<body package="Amqp">headers: aValue		headers := aValue</body>

<body package="Amqp">messageId		^messageId</body>

<body package="Amqp">appId: aValue		appId := aValue</body>

<body package="Amqp">replyTo: aValue		replyTo := aValue</body>

<body package="Amqp">contentEncoding: aValue		contentEncoding := aValue</body>

<body package="Amqp">headers		^headers</body>

<body package="Amqp">contentType		^contentType</body>

<body package="Amqp">appId		^appId</body>

<body package="Amqp">type		^type</body>

<body package="Amqp">replyTo		^replyTo</body>

<body package="Amqp">correlationId: aValue		correlationId := aValue</body>

<body package="Amqp">type: aValue		type := aValue</body>

<body package="Amqp">contentEncoding		^contentEncoding</body>

<body package="Amqp">priority: aValue		priority := aValue</body>

<body package="Amqp">userId: aValue		userId := aValue</body>

<body package="Amqp">deliveryMode		^deliveryMode</body>

<body package="Amqp">priority		^priority</body>

<body package="Amqp">clusterId: aValue		clusterId := aValue</body>

<body package="Amqp">timestamp: aValue		timestamp := aValue</body>

<body package="Amqp">correlationId		^correlationId</body>

<body package="Amqp">timestamp		^timestamp</body>

<body package="Amqp">deliveryMode: aValue		deliveryMode := aValue</body>

<body package="Amqp">messageId: aValue		messageId := aValue</body>

<body package="Amqp">expiration		^expiration</body>

<body package="Amqp">expiration: aValue		expiration := aValue</body>

<body package="Amqp">contentType: aValue		contentType := aValue</body>

<body package="Amqp">clusterId		^clusterId</body>

<body package="Amqp">userId		^userId</body>
</methods>

<methods>
<class-id>Amqp08BasicProperties</class-id> <category>AMQP codec</category>

<body package="Amqp">codecClassId		^60</body>

<body package="Amqp">encodeOn: codec		| qFlags |	qFlags := 0.	contentType isNil ifFalse: [qFlags := qFlags bitOr: 32768].	contentEncoding isNil ifFalse: [qFlags := qFlags bitOr: 16384].	headers isNil ifFalse: [qFlags := qFlags bitOr: 8192].	deliveryMode isNil ifFalse: [qFlags := qFlags bitOr: 4096].	priority isNil ifFalse: [qFlags := qFlags bitOr: 2048].	correlationId isNil ifFalse: [qFlags := qFlags bitOr: 1024].	replyTo isNil ifFalse: [qFlags := qFlags bitOr: 512].	expiration isNil ifFalse: [qFlags := qFlags bitOr: 256].	messageId isNil ifFalse: [qFlags := qFlags bitOr: 128].	timestamp isNil ifFalse: [qFlags := qFlags bitOr: 64].	type isNil ifFalse: [qFlags := qFlags bitOr: 32].	userId isNil ifFalse: [qFlags := qFlags bitOr: 16].	appId isNil ifFalse: [qFlags := qFlags bitOr: 8].	clusterId isNil ifFalse: [qFlags := qFlags bitOr: 4].	self encodeFlags: qFlags on: codec.	contentType isNil ifFalse: [codec nextShortstrPut: contentType].	contentEncoding isNil ifFalse: [codec nextShortstrPut: contentEncoding].	headers isNil ifFalse: [codec nextTablePut: headers].	deliveryMode isNil ifFalse: [codec nextOctetPut: deliveryMode].	priority isNil ifFalse: [codec nextOctetPut: priority].	correlationId isNil ifFalse: [codec nextShortstrPut: correlationId].	replyTo isNil ifFalse: [codec nextShortstrPut: replyTo].	expiration isNil ifFalse: [codec nextShortstrPut: expiration].	messageId isNil ifFalse: [codec nextShortstrPut: messageId].	timestamp isNil ifFalse: [codec nextTimestampPut: timestamp].	type isNil ifFalse: [codec nextShortstrPut: type].	userId isNil ifFalse: [codec nextShortstrPut: userId].	appId isNil ifFalse: [codec nextShortstrPut: appId].	clusterId isNil ifFalse: [codec nextShortstrPut: clusterId]</body>

<body package="Amqp">decodeFrom: codec		| qFlags |	qFlags := self decodeFlagsFrom: codec.	(qFlags bitAnd: 32768) = 0		ifTrue: [contentType := nil]		ifFalse: [contentType := codec nextShortstr].	(qFlags bitAnd: 16384) = 0		ifTrue: [contentEncoding := nil]		ifFalse: [contentEncoding := codec nextShortstr].	(qFlags bitAnd: 8192) = 0		ifTrue: [headers := nil]		ifFalse: [headers := codec nextTable].	(qFlags bitAnd: 4096) = 0		ifTrue: [deliveryMode := nil]		ifFalse: [deliveryMode := codec nextOctet].	(qFlags bitAnd: 2048) = 0		ifTrue: [priority := nil]		ifFalse: [priority := codec nextOctet].	(qFlags bitAnd: 1024) = 0		ifTrue: [correlationId := nil]		ifFalse: [correlationId := codec nextShortstr].	(qFlags bitAnd: 512) = 0		ifTrue: [replyTo := nil]		ifFalse: [replyTo := codec nextShortstr].	(qFlags bitAnd: 256) = 0		ifTrue: [expiration := nil]		ifFalse: [expiration := codec nextShortstr].	(qFlags bitAnd: 128) = 0		ifTrue: [messageId := nil]		ifFalse: [messageId := codec nextShortstr].	(qFlags bitAnd: 64) = 0		ifTrue: [timestamp := nil]		ifFalse: [timestamp := codec nextTimestamp].	(qFlags bitAnd: 32) = 0		ifTrue: [type := nil]		ifFalse: [type := codec nextShortstr].	(qFlags bitAnd: 16) = 0		ifTrue: [userId := nil]		ifFalse: [userId := codec nextShortstr].	(qFlags bitAnd: 8) = 0		ifTrue: [appId := nil]		ifFalse: [appId := codec nextShortstr].	(qFlags bitAnd: 4) = 0		ifTrue: [clusterId := nil]		ifFalse: [clusterId := codec nextShortstr]</body>
</methods>


<methods>
<class-id>Amqp08FileProperties</class-id> <category>accessing</category>

<body package="Amqp">headers		^headers</body>

<body package="Amqp">filename: aValue		filename := aValue</body>

<body package="Amqp">clusterId: aValue		clusterId := aValue</body>

<body package="Amqp">replyTo		^replyTo</body>

<body package="Amqp">replyTo: aValue		replyTo := aValue</body>

<body package="Amqp">headers: aValue		headers := aValue</body>

<body package="Amqp">contentEncoding: aValue		contentEncoding := aValue</body>

<body package="Amqp">contentEncoding		^contentEncoding</body>

<body package="Amqp">priority: aValue		priority := aValue</body>

<body package="Amqp">timestamp		^timestamp</body>

<body package="Amqp">contentType		^contentType</body>

<body package="Amqp">clusterId		^clusterId</body>

<body package="Amqp">messageId		^messageId</body>

<body package="Amqp">messageId: aValue		messageId := aValue</body>

<body package="Amqp">contentType: aValue		contentType := aValue</body>

<body package="Amqp">filename		^filename</body>

<body package="Amqp">priority		^priority</body>

<body package="Amqp">timestamp: aValue		timestamp := aValue</body>
</methods>

<methods>
<class-id>Amqp08FileProperties</class-id> <category>AMQP codec</category>

<body package="Amqp">codecClassId		^70</body>

<body package="Amqp">encodeOn: codec		| qFlags |	qFlags := 0.	contentType isNil ifFalse: [qFlags := qFlags bitOr: 32768].	contentEncoding isNil ifFalse: [qFlags := qFlags bitOr: 16384].	headers isNil ifFalse: [qFlags := qFlags bitOr: 8192].	priority isNil ifFalse: [qFlags := qFlags bitOr: 4096].	replyTo isNil ifFalse: [qFlags := qFlags bitOr: 2048].	messageId isNil ifFalse: [qFlags := qFlags bitOr: 1024].	filename isNil ifFalse: [qFlags := qFlags bitOr: 512].	timestamp isNil ifFalse: [qFlags := qFlags bitOr: 256].	clusterId isNil ifFalse: [qFlags := qFlags bitOr: 128].	self encodeFlags: qFlags on: codec.	contentType isNil ifFalse: [codec nextShortstrPut: contentType].	contentEncoding isNil ifFalse: [codec nextShortstrPut: contentEncoding].	headers isNil ifFalse: [codec nextTablePut: headers].	priority isNil ifFalse: [codec nextOctetPut: priority].	replyTo isNil ifFalse: [codec nextShortstrPut: replyTo].	messageId isNil ifFalse: [codec nextShortstrPut: messageId].	filename isNil ifFalse: [codec nextShortstrPut: filename].	timestamp isNil ifFalse: [codec nextTimestampPut: timestamp].	clusterId isNil ifFalse: [codec nextShortstrPut: clusterId]</body>

<body package="Amqp">decodeFrom: codec		| qFlags |	qFlags := self decodeFlagsFrom: codec.	(qFlags bitAnd: 32768) = 0		ifTrue: [contentType := nil]		ifFalse: [contentType := codec nextShortstr].	(qFlags bitAnd: 16384) = 0		ifTrue: [contentEncoding := nil]		ifFalse: [contentEncoding := codec nextShortstr].	(qFlags bitAnd: 8192) = 0		ifTrue: [headers := nil]		ifFalse: [headers := codec nextTable].	(qFlags bitAnd: 4096) = 0		ifTrue: [priority := nil]		ifFalse: [priority := codec nextOctet].	(qFlags bitAnd: 2048) = 0		ifTrue: [replyTo := nil]		ifFalse: [replyTo := codec nextShortstr].	(qFlags bitAnd: 1024) = 0		ifTrue: [messageId := nil]		ifFalse: [messageId := codec nextShortstr].	(qFlags bitAnd: 512) = 0		ifTrue: [filename := nil]		ifFalse: [filename := codec nextShortstr].	(qFlags bitAnd: 256) = 0		ifTrue: [timestamp := nil]		ifFalse: [timestamp := codec nextTimestamp].	(qFlags bitAnd: 128) = 0		ifTrue: [clusterId := nil]		ifFalse: [clusterId := codec nextShortstr]</body>
</methods>


<methods>
<class-id>Amqp08StreamProperties</class-id> <category>accessing</category>

<body package="Amqp">contentEncoding		^contentEncoding</body>

<body package="Amqp">priority: aValue		priority := aValue</body>

<body package="Amqp">contentEncoding: aValue		contentEncoding := aValue</body>

<body package="Amqp">headers		^headers</body>

<body package="Amqp">contentType: aValue		contentType := aValue</body>

<body package="Amqp">timestamp		^timestamp</body>

<body package="Amqp">contentType		^contentType</body>

<body package="Amqp">headers: aValue		headers := aValue</body>

<body package="Amqp">timestamp: aValue		timestamp := aValue</body>

<body package="Amqp">priority		^priority</body>
</methods>

<methods>
<class-id>Amqp08StreamProperties</class-id> <category>AMQP codec</category>

<body package="Amqp">codecClassId		^80</body>

<body package="Amqp">encodeOn: codec		| qFlags |	qFlags := 0.	contentType isNil ifFalse: [qFlags := qFlags bitOr: 32768].	contentEncoding isNil ifFalse: [qFlags := qFlags bitOr: 16384].	headers isNil ifFalse: [qFlags := qFlags bitOr: 8192].	priority isNil ifFalse: [qFlags := qFlags bitOr: 4096].	timestamp isNil ifFalse: [qFlags := qFlags bitOr: 2048].	self encodeFlags: qFlags on: codec.	contentType isNil ifFalse: [codec nextShortstrPut: contentType].	contentEncoding isNil ifFalse: [codec nextShortstrPut: contentEncoding].	headers isNil ifFalse: [codec nextTablePut: headers].	priority isNil ifFalse: [codec nextOctetPut: priority].	timestamp isNil ifFalse: [codec nextTimestampPut: timestamp]</body>

<body package="Amqp">decodeFrom: codec		| qFlags |	qFlags := self decodeFlagsFrom: codec.	(qFlags bitAnd: 32768) = 0		ifTrue: [contentType := nil]		ifFalse: [contentType := codec nextShortstr].	(qFlags bitAnd: 16384) = 0		ifTrue: [contentEncoding := nil]		ifFalse: [contentEncoding := codec nextShortstr].	(qFlags bitAnd: 8192) = 0		ifTrue: [headers := nil]		ifFalse: [headers := codec nextTable].	(qFlags bitAnd: 4096) = 0		ifTrue: [priority := nil]		ifFalse: [priority := codec nextOctet].	(qFlags bitAnd: 2048) = 0		ifTrue: [timestamp := nil]		ifFalse: [timestamp := codec nextTimestamp]</body>
</methods>


<methods>
<class-id>Amqp08TunnelProperties</class-id> <category>accessing</category>

<body package="Amqp">proxyName: aValue		proxyName := aValue</body>

<body package="Amqp">durable: aValue		durable := aValue</body>

<body package="Amqp">proxyName		^proxyName</body>

<body package="Amqp">headers		^headers</body>

<body package="Amqp">broadcast		^broadcast</body>

<body package="Amqp">headers: aValue		headers := aValue</body>

<body package="Amqp">durable		^durable</body>

<body package="Amqp">dataName		^dataName</body>

<body package="Amqp">dataName: aValue		dataName := aValue</body>

<body package="Amqp">broadcast: aValue		broadcast := aValue</body>
</methods>

<methods>
<class-id>Amqp08TunnelProperties</class-id> <category>AMQP codec</category>

<body package="Amqp">codecClassId		^110</body>

<body package="Amqp">encodeOn: codec		| qFlags |	qFlags := 0.	headers isNil ifFalse: [qFlags := qFlags bitOr: 32768].	proxyName isNil ifFalse: [qFlags := qFlags bitOr: 16384].	dataName isNil ifFalse: [qFlags := qFlags bitOr: 8192].	durable isNil ifFalse: [qFlags := qFlags bitOr: 4096].	broadcast isNil ifFalse: [qFlags := qFlags bitOr: 2048].	self encodeFlags: qFlags on: codec.	headers isNil ifFalse: [codec nextTablePut: headers].	proxyName isNil ifFalse: [codec nextShortstrPut: proxyName].	dataName isNil ifFalse: [codec nextShortstrPut: dataName].	durable isNil ifFalse: [codec nextOctetPut: durable].	broadcast isNil ifFalse: [codec nextOctetPut: broadcast]</body>

<body package="Amqp">decodeFrom: codec		| qFlags |	qFlags := self decodeFlagsFrom: codec.	(qFlags bitAnd: 32768) = 0		ifTrue: [headers := nil]		ifFalse: [headers := codec nextTable].	(qFlags bitAnd: 16384) = 0		ifTrue: [proxyName := nil]		ifFalse: [proxyName := codec nextShortstr].	(qFlags bitAnd: 8192) = 0		ifTrue: [dataName := nil]		ifFalse: [dataName := codec nextShortstr].	(qFlags bitAnd: 4096) = 0		ifTrue: [durable := nil]		ifFalse: [durable := codec nextOctet].	(qFlags bitAnd: 2048) = 0		ifTrue: [broadcast := nil]		ifFalse: [broadcast := codec nextOctet]</body>
</methods>


<methods>
<class-id>Amqp091BasicProperties</class-id> <category>accessing</category>

<body package="Amqp">userId		^userId</body>

<body package="Amqp">headers: aValue		headers := aValue</body>

<body package="Amqp">appId: aValue		appId := aValue</body>

<body package="Amqp">messageId		^messageId</body>

<body package="Amqp">replyTo: aValue		replyTo := aValue</body>

<body package="Amqp">contentEncoding: aValue		contentEncoding := aValue</body>

<body package="Amqp">headers		^headers</body>

<body package="Amqp">reserved		^reserved</body>

<body package="Amqp">contentType		^contentType</body>

<body package="Amqp">appId		^appId</body>

<body package="Amqp">type		^type</body>

<body package="Amqp">replyTo		^replyTo</body>

<body package="Amqp">correlationId: aValue		correlationId := aValue</body>

<body package="Amqp">type: aValue		type := aValue</body>

<body package="Amqp">contentEncoding		^contentEncoding</body>

<body package="Amqp">priority: aValue		priority := aValue</body>

<body package="Amqp">deliveryMode		^deliveryMode</body>

<body package="Amqp">userId: aValue		userId := aValue</body>

<body package="Amqp">priority		^priority</body>

<body package="Amqp">timestamp: aValue		timestamp := aValue</body>

<body package="Amqp">correlationId		^correlationId</body>

<body package="Amqp">timestamp		^timestamp</body>

<body package="Amqp">deliveryMode: aValue		deliveryMode := aValue</body>

<body package="Amqp">messageId: aValue		messageId := aValue</body>

<body package="Amqp">reserved: aValue		reserved := aValue</body>

<body package="Amqp">expiration		^expiration</body>

<body package="Amqp">expiration: aValue		expiration := aValue</body>

<body package="Amqp">contentType: aValue		contentType := aValue</body>
</methods>

<methods>
<class-id>Amqp091BasicProperties</class-id> <category>AMQP codec</category>

<body package="Amqp">codecClassId		^60</body>

<body package="Amqp">encodeOn: codec		| qFlags |	qFlags := 0.	contentType isNil ifFalse: [qFlags := qFlags bitOr: 32768].	contentEncoding isNil ifFalse: [qFlags := qFlags bitOr: 16384].	headers isNil ifFalse: [qFlags := qFlags bitOr: 8192].	deliveryMode isNil ifFalse: [qFlags := qFlags bitOr: 4096].	priority isNil ifFalse: [qFlags := qFlags bitOr: 2048].	correlationId isNil ifFalse: [qFlags := qFlags bitOr: 1024].	replyTo isNil ifFalse: [qFlags := qFlags bitOr: 512].	expiration isNil ifFalse: [qFlags := qFlags bitOr: 256].	messageId isNil ifFalse: [qFlags := qFlags bitOr: 128].	timestamp isNil ifFalse: [qFlags := qFlags bitOr: 64].	type isNil ifFalse: [qFlags := qFlags bitOr: 32].	userId isNil ifFalse: [qFlags := qFlags bitOr: 16].	appId isNil ifFalse: [qFlags := qFlags bitOr: 8].	reserved isNil ifFalse: [qFlags := qFlags bitOr: 4].	self encodeFlags: qFlags on: codec.	contentType isNil ifFalse: [codec nextShortstrPut: contentType].	contentEncoding isNil ifFalse: [codec nextShortstrPut: contentEncoding].	headers isNil ifFalse: [codec nextTablePut: headers].	deliveryMode isNil ifFalse: [codec nextOctetPut: deliveryMode].	priority isNil ifFalse: [codec nextOctetPut: priority].	correlationId isNil ifFalse: [codec nextShortstrPut: correlationId].	replyTo isNil ifFalse: [codec nextShortstrPut: replyTo].	expiration isNil ifFalse: [codec nextShortstrPut: expiration].	messageId isNil ifFalse: [codec nextShortstrPut: messageId].	timestamp isNil ifFalse: [codec nextTimestampPut: timestamp].	type isNil ifFalse: [codec nextShortstrPut: type].	userId isNil ifFalse: [codec nextShortstrPut: userId].	appId isNil ifFalse: [codec nextShortstrPut: appId].	reserved isNil ifFalse: [codec nextShortstrPut: reserved]</body>

<body package="Amqp">decodeFrom: codec		| qFlags |	qFlags := self decodeFlagsFrom: codec.	(qFlags bitAnd: 32768) = 0		ifTrue: [contentType := nil]		ifFalse: [contentType := codec nextShortstr].	(qFlags bitAnd: 16384) = 0		ifTrue: [contentEncoding := nil]		ifFalse: [contentEncoding := codec nextShortstr].	(qFlags bitAnd: 8192) = 0		ifTrue: [headers := nil]		ifFalse: [headers := codec nextTable].	(qFlags bitAnd: 4096) = 0		ifTrue: [deliveryMode := nil]		ifFalse: [deliveryMode := codec nextOctet].	(qFlags bitAnd: 2048) = 0		ifTrue: [priority := nil]		ifFalse: [priority := codec nextOctet].	(qFlags bitAnd: 1024) = 0		ifTrue: [correlationId := nil]		ifFalse: [correlationId := codec nextShortstr].	(qFlags bitAnd: 512) = 0		ifTrue: [replyTo := nil]		ifFalse: [replyTo := codec nextShortstr].	(qFlags bitAnd: 256) = 0		ifTrue: [expiration := nil]		ifFalse: [expiration := codec nextShortstr].	(qFlags bitAnd: 128) = 0		ifTrue: [messageId := nil]		ifFalse: [messageId := codec nextShortstr].	(qFlags bitAnd: 64) = 0		ifTrue: [timestamp := nil]		ifFalse: [timestamp := codec nextTimestamp].	(qFlags bitAnd: 32) = 0		ifTrue: [type := nil]		ifFalse: [type := codec nextShortstr].	(qFlags bitAnd: 16) = 0		ifTrue: [userId := nil]		ifFalse: [userId := codec nextShortstr].	(qFlags bitAnd: 8) = 0		ifTrue: [appId := nil]		ifFalse: [appId := codec nextShortstr].	(qFlags bitAnd: 4) = 0		ifTrue: [reserved := nil]		ifFalse: [reserved := codec nextShortstr]</body>
</methods>


<methods>
<class-id>AmqpSpecCompiler class</class-id> <category>as yet unclassified</category>

<body package="Amqp">methodNameFor: aString		| first |	first := true.	^self		joinPieces:			(aString substrings				collect:					[:each | 					first						ifTrue:							[first := false.							each]						ifFalse: [each capitalized]])</body>

<body package="Amqp">joinPieces: strings		| s |	s := WriteStream with: ''.	strings do: [:each | s nextPutAll: each].	^s contents</body>

<body package="Amqp">capitalizedNameFor: aString		^self joinPieces: (aString substrings collect: [:each | each capitalized])</body>
</methods>


<methods>
<class-id>AmqpSpecCompiler</class-id> <category>accessing</category>

<body package="Amqp">subclassOf: aSuperClass named: aString instanceVariables: aCollection		| ivs n c |	ivs := WriteStream with: ''.	n := self classNameFor: aString.	aCollection		do: [:each | ivs nextPutAll: each]		separatedBy: [ivs space].	c := aSuperClass		subclass: n		instanceVariableNames: ivs contents		classVariableNames: ''		poolDictionaries: ''		category: definitionCategory.	^c</body>

<body package="Amqp">classNameFor: aString		^(prefix		,			(AmqpSpecCompiler				joinPieces: (aString substrings collect: [:each | each capitalized])))		asSymbol</body>

<body package="Amqp">spec		^spec</body>

<body package="Amqp">definitionCategory: anObject		definitionCategory := anObject</body>

<body package="Amqp">reservedValueForDomain: domain		domain = 'octet' ifTrue: [^'0'].	domain = 'short' ifTrue: [^'0'].	domain = 'long' ifTrue: [^'0'].	domain = 'longlong' ifTrue: [^'0'].	^'nil'</body>

<body package="Amqp">acceptableResponseClassesSource: m		| s |	s := WriteStream with:			'acceptableResponseClasses	^ #('.	m responses		do:			[:each | 			s				nextPutAll: '		' , (self classNameFor: m classDef name , ' ' , each);				cr].	s nextPutAll: '	)'.	^s contents</body>

<body package="Amqp">initializerSource		| source |	source := WriteStream with:			'initialize	super initialize.'.	spec classDefinitions		valuesDo:			[:each | 			each hasProperties				ifTrue:					[source						nextPutAll: '	classIds at: ';						nextPutAll: each index asString;						nextPutAll: ' put: ';						nextPutAll: (self classNameFor: each propertiesName);						nextPut: $.;						nextPut: Character cr]].	spec allMethods		do:			[:each | 			source				nextPutAll: '	methodIds at: ';				nextPutAll: each methodId asString;				nextPutAll: ' put: ';				nextPutAll: (self classNameFor: each classDef name , ' ' , each name);				nextPut: $.;				nextPut: Character cr].	^source contents</body>

<body package="Amqp">prefix		^prefix</body>

<body package="Amqp">generateMethod: def		| c fs |	fs := def fields reject: [:each | each isReserved].	c := self		subclassOf: AmqpProtocolMethod		named: def classDef name , ' ' , def name		instanceVariables: (fs collect: [:each | each methodName]).	fs		do:			[:f | 			c				compile: f methodName , ' ^ ' , f methodName				classified: 'accessing'.			c				compile: f methodName , ': aValue ' , f methodName , ' := aValue.'				classified: 'accessing'].	c		compile: 'codecMethodId ^ ' , def methodId asString		classified: 'AMQP codec'.	c		compile: 'hasContents ^ ' , def hasContents asString		classified: 'AMQP codec'.	c		compile: (self acceptableResponseClassesSource: def)		classified: 'AMQP codec'.	c		compile: (self decodeMethodSource: def)		classified: 'AMQP codec'.	c		compile: (self encodeMethodSource: def)		classified: 'AMQP codec'</body>

<body package="Amqp">decodeMethodSource: m		| s bitindex |	s := WriteStream with:			'decodeFrom: codec	| bitBuffer |'.	bitindex := nil.	m fields		do:			[:f | 			f domain = 'bit'				ifTrue:					[bitindex ifNil: [bitindex := 0].					bitindex &gt;= 8 ifTrue: [bitindex := 0].					bitindex = 0						ifTrue:							[s								nextPutAll: '	bitBuffer := codec nextOctet.';								cr].					f isReserved						ifFalse:							[s								nextPutAll:									'	' , f methodName , ' := (bitBuffer bitAnd: '										, (1 bitShift: bitindex) asString , ') ~= 0.'.							s cr].					bitindex := bitindex + 1]				ifFalse:					[bitindex := nil.					s						nextPutAll: '	' , (self decodeFieldSource: f);						cr]].	^s contents</body>

<body package="Amqp">encodeMethodSource: m		| s bitindex finishbits |	s := WriteStream with:			'encodeOn: codec	| bitBuffer |'.	bitindex := nil.	finishbits := [bitindex notNil		ifTrue:			[s				nextPutAll: '	codec nextOctetPut: bitBuffer.';				cr]].	m fields		do:			[:f | 			f domain = 'bit'				ifTrue:					[bitindex						ifNil:							[bitindex := 0.							s								nextPutAll: '	bitBuffer := 0.';								cr].					bitindex &gt;= 8						ifTrue:							[finishbits value.							s								nextPutAll: '	bitBuffer := 0.';								cr.							bitindex := 0].					f isReserved						ifFalse:							[s								nextPutAll:									'	(' , f methodName , ' ifNil: [false])' ,											' ifTrue: [bitBuffer := bitBuffer bitOr: '										, (1 bitShift: bitindex) asString , '].'.							s cr].					bitindex := bitindex + 1]				ifFalse:					[finishbits value.					bitindex := nil.					s						nextPutAll: '	' , (self encodeFieldSource: f);						cr]].	finishbits value.	^s contents</body>

<body package="Amqp">generateClass: def		self generateContentProperties: def.	def methods valuesDo: [:each | self generateMethod: each]</body>

<body package="Amqp">encodePropertiesSource: c		| s |	s := WriteStream with:			'encodeOn: codec	| qFlags |	qFlags := 0.'.	c		propertiesAndMasksDo:			[:f :bitMask | 			f isReserved				ifFalse:					[f domain = 'bit'						ifTrue:							[s								nextPutAll:										'	' , f methodName , ' ifTrue: [qFlags := qFlags bitOr: '												, bitMask asString , '].';								cr]						ifFalse:							[s								nextPutAll:										'	' , f methodName , ' isNil ifFalse: [qFlags := qFlags bitOr: '												, bitMask asString , '].';								cr]]].	s		cr;		nextPutAll: '	self encodeFlags: qFlags on: codec.';		cr;		cr.	c		propertiesAndMasksDo:			[:f :bitMask | 			f isReserved				ifFalse:					[f domain = 'bit'						ifFalse:							[s								nextPutAll:										'	' , f methodName , ' isNil ifFalse: [' , (self encodeFieldSource: f) ,													'].';								cr]]].	^s contents</body>

<body package="Amqp">spec: anObject		spec := anObject.	definitionCategory := 'Amqp-Protocol-' , spec versionString.	prefix := 'Amqp' , spec versionString</body>

<body package="Amqp">decodePropertiesSource: c		| s |	s := WriteStream with:			'decodeFrom: codec	| qFlags |	qFlags := self decodeFlagsFrom: codec.'.	c		propertiesAndMasksDo:			[:f :bitMask | 			f domain = 'bit'				ifTrue:					[f isReserved						ifFalse:							[s								nextPutAll:										'	' , f methodName , ' := (qFlags bitAnd: ' , bitMask asString , ') ~= 0.';								cr]]				ifFalse:					[s nextPutAll: '	(qFlags bitAnd: ' , bitMask asString , ') = 0 ifTrue: ['.					f isReserved ifFalse: [s nextPutAll: f methodName , ' := nil'].					s						nextPutAll: '] ifFalse: [' , (self decodeFieldSource: f) , '].';						cr]].	^s contents</body>

<body package="Amqp">definitionCategory		^definitionCategory</body>

<body package="Amqp">encodeFieldSource: f		^'codec next' , f domainName , 'Put: '		,			(f isReserved				ifTrue: [self reservedValueForDomain: f domain]				ifFalse: [f methodName]) , '.'</body>

<body package="Amqp">generateEverything		| p pc |	p := self subclassOf: AmqpProtocol named: '' instanceVariables: #().	pc := p class.	pc		compile: 'portNumber ^' , spec portNumber asString		classified: 'AMQP protocol'.	pc		compile: 'majorVersion ^' , spec majorVersion asString		classified: 'AMQP protocol'.	pc		compile: 'minorVersion ^' , spec minorVersion asString		classified: 'AMQP protocol'.	pc		compile: 'revision ^' , spec revision asString		classified: 'AMQP protocol'.	pc		compile:			'isObsoleteProtocolVariant ^' , spec isObsoleteProtocolVariant asString		classified: 'AMQP protocol'.	spec constants		keysAndValuesDo:			[:name :value | 			pc				compile: (AmqpSpecCompiler methodNameFor: name) , ' ^' , value asString				classified: 'AMQP protocol constants'].	spec classDefinitions valuesDo: [:def | self generateClass: def].	pc		compile: self initializerSource		classified: 'class initialization'.	spec allMethods		do:			[:def | 			pc				compile:					(AmqpSpecCompiler						methodNameFor: def classDef name , ' ' , def name , ' method') ,							' ^ ' , (self classNameFor: def classDef name , ' ' , def name)				classified: 'AMQP methods'].	spec classDefinitions		valuesDo:			[:def | 			def hasProperties				ifTrue:					[pc						compile:							(AmqpSpecCompiler methodNameFor: def propertiesName , ' class') , ' ^ '								, (self classNameFor: def propertiesName)						classified: 'AMQP content properties']]</body>

<body package="Amqp">generateContentProperties: def		| c fs |	def hasProperties ifFalse: [^self].	fs := def contentProperties reject: [:each | each isReserved].	c := self		subclassOf: AmqpProtocolProperties		named: def propertiesName		instanceVariables: (fs collect: [:each | each methodName]).	fs		do:			[:f | 			c				compile: f methodName , ' ^ ' , f methodName				classified: 'accessing'.			c				compile: f methodName , ': aValue ' , f methodName , ' := aValue.'				classified: 'accessing'].	c		compile: 'codecClassId ^ ' , def index asString		classified: 'AMQP codec'.	c		compile: (self decodePropertiesSource: def)		classified: 'AMQP codec'.	c		compile: (self encodePropertiesSource: def)		classified: 'AMQP codec'</body>

<body package="Amqp">prefix: anObject		prefix := anObject</body>

<body package="Amqp">wipePackage		(self		confirm:			'Are you sure you want to erase all classes in package ' ,					definitionCategory , '?') ifFalse: [^self].	(Class allSubInstances		select: [:each | each category = definitionCategory])		do: [:each | each removeFromSystem]</body>

<body package="Amqp">decodeFieldSource: f		^(f isReserved		ifTrue: ['']		ifFalse: ['' , f methodName , ' := ']) , 'codec next' , f domainName ,			'.'</body>
</methods>


<methods>
<class-id>AmqpSpecification class</class-id> <category>as yet unclassified</category>

<body package="Amqp">official08		^self loadFrom:			'http://jira.amqp.org/confluence/download/attachments/720900/amqp0-8.stripped.xml?version=1'</body>

<body package="Amqp">normalizeName: aString		| s |	s := aString asLowercase.	s := s copyReplaceAll: '-' with: ' '.	s := s copyReplaceAll: '_' with: ' '.	^s</body>

<body package="Amqp">loadFrom: aUrl		^self new loadFromXml: aUrl asUrl retrieveContents contents readStream</body>

<body package="Amqp">official091		^self loadFrom:			'http://jira.amqp.org/confluence/download/attachments/720900/amqp0-9-1.stripped.xml?version=1'</body>
</methods>


<methods>
<class-id>AmqpSpecification</class-id> <category>accessing</category>

<body package="Amqp">portNumber		^portNumber</body>

<body package="Amqp">portNumber: anObject		portNumber := anObject</body>

<body package="Amqp">classDefinitions: anObject		classDefinitions := anObject</body>

<body package="Amqp">majorVersion		^majorVersion</body>

<body package="Amqp">domains: anObject		domains := anObject</body>

<body package="Amqp">majorVersion: anObject		majorVersion := anObject</body>

<body package="Amqp">revision: anObject		revision := anObject</body>

<body package="Amqp">domains		^domains</body>

<body package="Amqp">constants: anObject		constants := anObject</body>

<body package="Amqp">allMethods		^(classDefinitions values collect: [:each | each methods values])		concatenation</body>

<body package="Amqp">minorVersion: anObject		minorVersion := anObject</body>

<body package="Amqp">minorVersion		^minorVersion</body>

<body package="Amqp">resolveDomain: aString		^domains at: (AmqpSpecification normalizeName: aString)</body>

<body package="Amqp">classAt: className		^classDefinitions at: className</body>

<body package="Amqp">revision		^revision</body>

<body package="Amqp">classDefinitions		^classDefinitions</body>

<body package="Amqp">constants		^constants</body>

<body package="Amqp">class: className method: methodName		^(self classAt: className) methods at: methodName</body>
</methods>

<methods>
<class-id>AmqpSpecification</class-id> <category>as yet unclassified</category>

<body package="Amqp">loadFromXml: aStream		| d a |	d := XMLDOMParser parseDocumentFrom: aStream.	a := d firstTagNamed: #amqp.	majorVersion := (a attributeAt: #major) asInteger.	minorVersion := (a attributeAt: #minor) asInteger.	revision := (a		attributeAt: #revision		ifAbsent: [0]) asInteger.	"Special-case a mistake in the 0-8 XML."	(majorVersion = 8 and: [minorVersion = 0])		ifTrue:			[majorVersion := 0.			minorVersion := 8].	portNumber := (a attributeAt: #port) asInteger.	constants := Dictionary new.	a		tagsNamed: #constant		childrenDo:			[:each | 			constants				at: (AmqpSpecification normalizeName: (each attributeAt: #name))				put: (each attributeAt: #value) asInteger].	domains := Dictionary new.	self insertBaseDomains.	a		tagsNamed: #domain		childrenDo:			[:each | 			domains				at: (AmqpSpecification normalizeName: (each attributeAt: #name))				put: (AmqpSpecification normalizeName: (each attributeAt: #type))].	classDefinitions := Dictionary new.	a		tagsNamed: #class		do:			[:each | 			(AmqpClassDefinition new)				loadFrom: each;				installOn: classDefinitions].	self resolve</body>

<body package="Amqp">versionString		^majorVersion asString , minorVersion asString		,			(revision &gt; 0				ifTrue: [revision asString]				ifFalse: [''])</body>

<body package="Amqp">insertBaseDomains	"For the benefit of the 0-8 spec, which is missing these ground definitions."		#('octet' 'shortstr' 'longstr' 'short' 'long' 'longlong' 'bit' 'table' 'timestamp')		do: [:d | domains at: d put: d]</body>

<body package="Amqp">isObsoleteProtocolVariant		^majorVersion = 0 and: [minorVersion &lt; 9]</body>

<body package="Amqp">resolve		classDefinitions valuesDo: [:each | each resolveUsing: self]</body>
</methods>


<methods>
<class-id>AmqpProtocolMismatchError</class-id> <category>accessing</category>

<body package="Amqp">serverProtocolHeader		^serverProtocolHeader</body>

<body package="Amqp">serverProtocolHeader: anObject		serverProtocolHeader := anObject</body>
</methods>


<methods>
<class-id>AmqpChannel</class-id> <category>AMQP local transactions</category>

<body package="Amqp">txSelect		^self rpc: protocolClass txSelectMethod new</body>

<body package="Amqp">txCommit		^self rpc: protocolClass txCommitMethod new</body>

<body package="Amqp">txRollback		^self rpc: protocolClass txRollbackMethod new</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP binding management</category>

<body package="Amqp">queueBind: queue exchange: exchange routingKey: routingKey arguments: aDictionary		^self		rpc:			((protocolClass queueBindMethod new)				queue: queue;				exchange: exchange;				routingKey: routingKey;				arguments: aDictionary)</body>

<body package="Amqp">queueUnbind: queue exchange: exchange routingKey: routingKey		^self queueUnbind: queue exchange: exchange routingKey: routingKey		arguments: nil</body>

<body package="Amqp">queueUnbind: queue exchange: exchange routingKey: routingKey arguments: aDictionary		^self		rpc:			((protocolClass queueUnbindMethod new)				queue: queue;				exchange: exchange;				routingKey: routingKey;				arguments: aDictionary)</body>

<body package="Amqp">queueBind: queue exchange: exchange routingKey: routingKey		^self queueBind: queue exchange: exchange routingKey: routingKey		arguments: nil</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>accessing</category>

<body package="Amqp">handler: h		handler := h.	handler addDependent: self.	callbacks := Dictionary new.	protocolClass := handler connection protocolClass.	handler		mapEvent: protocolClass channelCloseMethod		to: self		selector: #handleChannelClose:.	handler		mapEvent: protocolClass basicDeliverMethod		to: self		selector: #handleBasicDeliver:.	handler		mapEvent: protocolClass basicReturnMethod		to: self		selector: #handleBasicReturn:.	handler		mapEvent: protocolClass channelFlowMethod		to: self		selector: #handleChannelFlow:.	self rpc: protocolClass channelOpenMethod new</body>

<body package="Amqp">handler		^handler</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP queue management</category>

<body package="Amqp">queueDeclare: queueName durable: durable exclusive: exclusive autoDelete: autoDelete passive: passive arguments: aDictionary		^self		rpc:			((protocolClass queueDeclareMethod new)				queue: queueName;				passive: passive;				durable: durable;				exclusive: exclusive;				autoDelete: autoDelete;				arguments: aDictionary)</body>

<body package="Amqp">queuePurge: queue		^self rpc: (protocolClass queuePurgeMethod new queue: queue)</body>

<body package="Amqp">queueDelete: queueName		^self queueDelete: queueName ifUnused: false ifEmpty: false</body>

<body package="Amqp">queueDeclare: queueName		^self queueDeclare: queueName durable: false exclusive: false autoDelete:			false passive: false arguments: nil</body>

<body package="Amqp">queueDelete: queueName ifUnused: ifUnused ifEmpty: ifEmpty		^self		rpc:			((protocolClass queueDeleteMethod new)				queue: queueName;				ifUnused: ifUnused;				ifEmpty: ifEmpty)</body>

<body package="Amqp">queueDeclare: queueName durable: durable		^self queueDeclare: queueName durable: durable exclusive: false		autoDelete: false passive: false arguments: nil</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP receiving messages</category>

<body package="Amqp">consumeFrom: queue callback: anObject selector: aSymbol noAck: noAck exclusive: exclusive consumerTag: aString arguments: aDictionary		| result |	result := self		rpc:			((protocolClass basicConsumeMethod new)				queue: queue;				consumerTag: aString;				noAck: noAck;				exclusive: exclusive;				arguments: aDictionary).	callbacks		at: result method consumerTag		put: anObject -&gt; aSymbol.	^result method consumerTag</body>

<body package="Amqp">consumeFrom: queue callback: anObject selector: aSymbol noAck: noAck		^self consumeFrom: queue callback: anObject selector: aSymbol noAck: noAck		exclusive: false consumerTag: ''</body>

<body package="Amqp">consumeFrom: queue callback: anObject selector: aSymbol		^self consumeFrom: queue callback: anObject selector: aSymbol noAck: false		exclusive: false consumerTag: ''</body>

<body package="Amqp">basicReject: anInteger requeue: aBoolean		self		rpc:			((protocolClass basicRejectMethod new)				deliveryTag: anInteger;				requeue: aBoolean)</body>

<body package="Amqp">prefetchCount: prefetchCount		^self prefetchCount: prefetchCount prefetchSize: 0 global: false</body>

<body package="Amqp">basicGet: aString noAck: aBoolean		| result |	result := self		rpc:			((protocolClass basicGetMethod new)				queue: aString;				noAck: aBoolean).	(result method isKindOf: protocolClass basicGetOkMethod) ifFalse: [^nil].	^result</body>

<body package="Amqp">basicRecover: shouldRequeue		^self rpc: (protocolClass basicRecoverMethod new requeue: shouldRequeue)</body>

<body package="Amqp">basicAck: anInteger		self basicAck: anInteger multiple: false</body>

<body package="Amqp">cancelConsumer: consumerTag		self rpc: (protocolClass basicCancelMethod new consumerTag: consumerTag).	callbacks		removeKey: consumerTag		ifAbsent: []</body>

<body package="Amqp">consumeFrom: queue callback: anObject selector: aSymbol noAck: noAck exclusive: exclusive consumerTag: aString		| result |	result := self		rpc:			((protocolClass basicConsumeMethod new)				queue: queue;				consumerTag: aString;				noAck: noAck;				exclusive: exclusive).	callbacks		at: result method consumerTag		put: anObject -&gt; aSymbol.	^result method consumerTag</body>

<body package="Amqp">basicRecover		^self basicRecover: false</body>

<body package="Amqp">basicGet: aString		^self basicGet: aString noAck: false</body>

<body package="Amqp">prefetchCount: prefetchCount prefetchSize: prefetchSize global: aBoolean		^self		rpc:			((protocolClass basicQosMethod new)				prefetchSize: prefetchSize;				prefetchCount: prefetchCount;				global: aBoolean)</body>

<body package="Amqp">basicAck: anInteger multiple: aBoolean		self		rpc:			((protocolClass basicAckMethod new)				deliveryTag: anInteger;				multiple: aBoolean)</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP closing</category>

<body package="Amqp">closeReason		^handler closeReason</body>

<body package="Amqp">close		| c |	handler closeReason		ifNil:			[c := (protocolClass channelCloseMethod new)				replyCode: protocolClass replySuccess;				replyText: 'Normal close';				classId: 0;				methodId: 0.			handler rpc: c.			handler internalClose: c]</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP server-generated events</category>

<body package="Amqp">handleChannelClose: cmd		handler internalClose: cmd method.	handler connection		sendMethod: protocolClass channelCloseOkMethod new		onChannel: handler channelNumber	"TODO: notify callbacks of closure"</body>

<body package="Amqp">handleBasicDeliver: cmd		| a |	a := callbacks at: cmd method consumerTag.	a key		perform: a value		with: cmd</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP sending messages</category>

<body package="Amqp">basicPublish: aByteArray exchange: exchangeName routingKey: routingKey properties: aBasicProperties		^self basicPublish: aByteArray exchange: exchangeName routingKey:			routingKey properties: aBasicProperties mandatory: false immediate:			false</body>

<body package="Amqp">basicPublish: aByteArray exchange: exchangeName routingKey: routingKey		^self		basicPublish: aByteArray		exchange: exchangeName		routingKey: routingKey		properties: protocolClass basicPropertiesClass new</body>

<body package="Amqp">basicPublish: aByteArray exchange: exchangeName routingKey: routingKey properties: aBasicProperties mandatory: mandatory immediate: immediate		handler connection		sendMethod:			((protocolClass basicPublishMethod new)				exchange: exchangeName;				routingKey: routingKey;				mandatory: mandatory;				immediate: immediate)		properties: aBasicProperties		body: aByteArray		onChannel: handler channelNumber</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP exchange management</category>

<body package="Amqp">exchangeDeclare: exchangeName type: typeString durable: durable autoDelete: autoDelete passive: passive arguments: aDictionary		^self		rpc:			((protocolClass exchangeDeclareMethod new)				exchange: exchangeName;				type: typeString;				passive: passive;				durable: durable;				autoDelete: autoDelete;				arguments: aDictionary)</body>

<body package="Amqp">exchangeDeclare: exchangeName type: typeString durable: durable autoDelete: autoDelete passive: passive		^self exchangeDeclare: exchangeName type: typeString durable: durable		autoDelete: autoDelete passive: passive arguments: nil</body>

<body package="Amqp">exchangeDeclare: exchangeName type: typeString		^self exchangeDeclare: exchangeName type: typeString durable: false		autoDelete: false passive: false arguments: nil</body>

<body package="Amqp">exchangeDelete: exchangeName		^self exchangeDelete: exchangeName ifUnused: false</body>

<body package="Amqp">exchangeDeclare: exchangeName type: typeString durable: durable		^self exchangeDeclare: exchangeName type: typeString durable: durable		autoDelete: false passive: false arguments: nil</body>

<body package="Amqp">exchangeDelete: exchangeName ifUnused: aBoolean		^self		rpc:			((protocolClass exchangeDeleteMethod new)				exchange: exchangeName;				ifUnused: aBoolean)</body>
</methods>

<methods>
<class-id>AmqpChannel</class-id> <category>AMQP private</category>

<body package="Amqp">update: aSymbol		aSymbol == #channelHandlerClosed ifTrue: [self changed: #channelClosed].	^super update: aSymbol</body>

<body package="Amqp">protocolClass		^protocolClass</body>

<body package="Amqp">rpc: requestMethod		^handler rpc: requestMethod</body>
</methods>



<initialize>
<class-id>Amqp08</class-id>
</initialize>

<initialize>
<class-id>AmqpProtocol</class-id>
</initialize>

<initialize>
<class-id>Amqp091</class-id>
</initialize>

</st-source>
