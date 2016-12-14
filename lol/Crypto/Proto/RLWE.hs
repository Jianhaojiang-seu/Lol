{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Crypto.Proto.RLWE (protoInfo, fileDescriptorProto) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import Text.DescriptorProtos.FileDescriptorProto (FileDescriptorProto)
import Text.ProtocolBuffers.Reflections (ProtoInfo)
import qualified Text.ProtocolBuffers.WireMessage as P' (wireGet,getFromBS)

protoInfo :: ProtoInfo
protoInfo
 = Prelude'.read
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".RLWE\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [], baseName = MName \"RLWE\"}, protoFilePath = [\"Crypto\",\"Proto\",\"RLWE.hs\"], protoSource = \"RLWE.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleContLegacy\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleContLegacy\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleContLegacy.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleContLegacy.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleContLegacy\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleContLegacy.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleContLegacy\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Kq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Kq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleDiscLegacy\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleDiscLegacy\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleDiscLegacy.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDiscLegacy.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDiscLegacy\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDiscLegacy.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDiscLegacy\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleRLWRLegacy\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleRLWRLegacy\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleRLWRLegacy.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWRLegacy.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWRLegacy\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWRLegacy.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWRLegacy\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleCont\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleCont\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleCont.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleCont.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleCont\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleCont.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleCont\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.KqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"KqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleDisc\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleDisc\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleDisc.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDisc.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDisc\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDisc.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDisc\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleRLWR\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"SampleRLWR.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWR.a\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWR\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWR.b\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWR\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.R\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"R\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"R.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.R.m\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"R\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.R.xs\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"R\"], baseName' = FName \"xs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 18}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"Rq.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Rq.m\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Rq\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Rq.q\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Rq\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Rq.xs\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Rq\"], baseName' = FName \"xs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 18}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.Kq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Kq\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"Kq.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Kq.m\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Kq\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Kq.q\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Kq\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Kq.xs\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Kq\"], baseName' = FName \"xs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 25}, packedTag = Just (WireTag {getWireTag = 25},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.LinearRq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"LinearRq\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"LinearRq.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.LinearRq.e\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"LinearRq\"], baseName' = FName \"e\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.LinearRq.r\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"LinearRq\"], baseName' = FName \"r\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.LinearRq.coeffs\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"LinearRq\"], baseName' = FName \"coeffs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.RqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"RqProduct\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"RqProduct.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.RqProduct.rqlist\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"RqProduct\"], baseName' = FName \"rqlist\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.KqProduct\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"KqProduct\"}, descFilePath = [\"Crypto\",\"Proto\",\"RLWE\",\"KqProduct.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.KqProduct.kqlist\", haskellPrefix' = [MName \"Crypto\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"KqProduct\"], baseName' = FName \"kqlist\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.Kq\", haskellPrefix = [MName \"Crypto\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Kq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], oneofs = [], knownKeyMap = fromList []}"

fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\149\ENQ\n\nRLWE.proto\"<\n\DLESampleContLegacy\DC2\DC3\n\SOHa\CAN\SOH \STX(\v2\b.RLWE.Rq\DC2\DC3\n\SOHb\CAN\STX \STX(\v2\b.RLWE.Kq\"<\n\DLESampleDiscLegacy\DC2\DC3\n\SOHa\CAN\SOH \STX(\v2\b.RLWE.Rq\DC2\DC3\n\SOHb\CAN\STX \STX(\v2\b.RLWE.Rq\"<\n\DLESampleRLWRLegacy\DC2\DC3\n\SOHa\CAN\SOH \STX(\v2\b.RLWE.Rq\DC2\DC3\n\SOHb\CAN\STX \STX(\v2\b.RLWE.Rq\"D\n\nSampleCont\DC2\SUB\n\SOHa\CAN\SOH \STX(\v2\SI.RLWE.RqProduct\DC2\SUB\n\SOHb\CAN\STX \STX(\v2\SI.RLWE.KqProduct\"D\n\nSampleDisc\DC2\SUB\n\SOHa\CAN\SOH \STX(\v2\SI.RLWE.RqProduct\DC2\SUB\n\SOHb\CAN\STX \STX(\v2\SI.RLWE.RqProduct\"D\n\nSampleRLWR\DC2\SUB\n\SOHa\CAN\SOH \STX(\v2\SI.RLWE.RqProduct\DC2\SUB\n\SOHb\CAN\STX \STX(\v2\SI.RLWE.RqProduct\"\SUB\n\SOHR\DC2\t\n\SOHm\CAN\SOH \STX(\r\DC2\n\n\STXxs\CAN\STX \ETX(\DC2\"&\n\STXRq\DC2\t\n\SOHm\CAN\SOH \STX(\r\DC2\t\n\SOHq\CAN\STX \STX(\EOT\DC2\n\n\STXxs\CAN\ETX \ETX(\DC2\"&\n\STXKq\DC2\t\n\SOHm\CAN\SOH \STX(\r\DC2\t\n\SOHq\CAN\STX \STX(\EOT\DC2\n\n\STXxs\CAN\ETX \ETX(\SOH\"A\n\bLinearRq\DC2\t\n\SOHe\CAN\SOH \STX(\r\DC2\t\n\SOHr\CAN\STX \STX(\r\DC2\US\n\ACKcoeffs\CAN\ETX \ETX(\v2\SI.RLWE.RqProduct\"%\n\tRqProduct\DC2\CAN\n\ACKrqlist\CAN\SOH \ETX(\v2\b.RLWE.Rq\"%\n\tKqProduct\DC2\CAN\n\ACKkqlist\CAN\SOH \ETX(\v2\b.RLWE.Kq")