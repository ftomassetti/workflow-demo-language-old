<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:606b38cf-fac8-4bb4-a513-b29dd429ae99(com.strumenta.workflow.mpsserverextensions.extensions)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
  </languages>
  <imports>
    <import index="e4as" ref="r:0b41bd2a-d72e-4e3a-8bde-c68965ce30dd(com.strumenta.mpsserver.extensionkit.code)" />
    <import index="o69o" ref="r:24e6972a-8fd6-40f7-9c1a-8b4c6ef40a2d(com.strumenta.workflow.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="hu$DhQg_5z">
    <property role="TrG5h" value="MyExtension" />
    <node concept="3Tm1VV" id="hu$DhQg_5$" role="1B3o_S" />
    <node concept="3uibUv" id="hu$DhQgCk9" role="EKbjA">
      <ref role="3uigEE" to="e4as:2OkDVTX2Kdi" resolve="MPSServerExtension" />
    </node>
    <node concept="3clFb_" id="hu$DhQgCl0" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="hu$DhQgCl2" role="1B3o_S" />
      <node concept="3cqZAl" id="hu$DhQgCl3" role="3clF45" />
      <node concept="37vLTG" id="hu$DhQgCl4" role="3clF46">
        <property role="TrG5h" value="server" />
        <node concept="3uibUv" id="hu$DhQgCl5" role="1tU5fm">
          <ref role="3uigEE" to="e4as:4JnP3TVzc4K" resolve="ExtendableServer" />
        </node>
      </node>
      <node concept="3clFbS" id="hu$DhQgClb" role="3clF47">
        <node concept="3clFbF" id="hu$DhQgCrh" role="3cqZAp">
          <node concept="2OqwBi" id="hu$DhQgCuf" role="3clFbG">
            <node concept="37vLTw" id="hu$DhQgCrg" role="2Oq$k0">
              <ref role="3cqZAo" node="hu$DhQgCl4" resolve="server" />
            </node>
            <node concept="liA8E" id="hu$DhQgCyf" role="2OqNvi">
              <ref role="37wK5l" to="e4as:i07tI0JL0g" resolve="registerConceptSpecificAction" />
              <node concept="2OqwBi" id="hu$DhQgG4Y" role="37wK5m">
                <node concept="35c_gC" id="hu$DhQgFtV" role="2Oq$k0">
                  <ref role="35c_gD" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                </node>
                <node concept="liA8E" id="hu$DhQgGlb" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                </node>
              </node>
              <node concept="Xl_RD" id="hu$DhQgGnu" role="37wK5m">
                <property role="Xl_RC" value="canConnectTo" />
              </node>
              <node concept="2ShNRf" id="hu$DhQgGOX" role="37wK5m">
                <node concept="YeOm9" id="hu$DhQgI1E" role="2ShVmc">
                  <node concept="1Y3b0j" id="hu$DhQgI1H" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="e4as:i07tI0JCFB" resolve="Action" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="hu$DhQgI1I" role="1B3o_S" />
                    <node concept="3clFb_" id="hu$DhQgI1N" role="jymVt">
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tm1VV" id="hu$DhQgI1P" role="1B3o_S" />
                      <node concept="3uibUv" id="hu$DhQgI1Q" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTG" id="hu$DhQgI1R" role="3clF46">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="hu$DhQgI1S" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="hu$DhQgI1T" role="3clF46">
                        <property role="TrG5h" value="params" />
                        <node concept="3uibUv" id="hu$DhQgI1U" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                          <node concept="3uibUv" id="hu$DhQgI1V" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="hu$DhQgI1W" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="hu$DhQgI1X" role="3clF47">
                        <node concept="3cpWs8" id="hu$DhQgNVE" role="3cqZAp">
                          <node concept="3cpWsn" id="hu$DhQgNVH" role="3cpWs9">
                            <property role="TrG5h" value="targetId" />
                            <node concept="17QB3L" id="hu$DhQgNVD" role="1tU5fm" />
                            <node concept="2OqwBi" id="hu$DhQgOhT" role="33vP2m">
                              <node concept="37vLTw" id="hu$DhQgNZe" role="2Oq$k0">
                                <ref role="3cqZAo" node="hu$DhQgI1T" resolve="params" />
                              </node>
                              <node concept="liA8E" id="hu$DhQgOKv" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="Xl_RD" id="hu$DhQgOTy" role="37wK5m">
                                  <property role="Xl_RC" value="target" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="hu$DhQgPZI" role="3cqZAp">
                          <node concept="3cpWsn" id="hu$DhQgPZL" role="3cpWs9">
                            <property role="TrG5h" value="result" />
                            <node concept="10P_77" id="hu$DhQgPZG" role="1tU5fm" />
                            <node concept="3clFbT" id="hu$DhQgQp3" role="33vP2m" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hu$DhQgPgx" role="3cqZAp">
                          <node concept="37vLTw" id="hu$DhQgQad" role="3cqZAk">
                            <ref role="3cqZAo" node="hu$DhQgPZL" resolve="result" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="hu$DhQgI1Z" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hu$DhQgClc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

