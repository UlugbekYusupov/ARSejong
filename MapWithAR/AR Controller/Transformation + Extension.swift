////
////  Transformation + Extension.swift
////  MapWithAR
////
////  Created by Ulugbek Yusupov on 12/2/19.
////  Copyright © 2019 Ulugbek Yusupov. All rights reserved.
////
//
//import UIKit
//import CoreLocation
//import GLKit
//
//class MatrixHelper {
//
//    static func translationMatrix(with matrix: matrix_float4x4, for translation : vector_float4) -> matrix_float4x4 {
//        var matrix = matrix
//        matrix.columns.3 = translation
//        return matrix
//    }
//
//    static func rotateAroundY(with matrix: matrix_float4x4, for degrees: Float) -> matrix_float4x4 {
//        var matrix : matrix_float4x4 = matrix
//
//        matrix.columns.0.x = cos(degrees)
//        matrix.columns.0.z = -sin(degrees)
//
//        matrix.columns.2.x = sin(degrees)
//        matrix.columns.2.z = cos(degrees)
//        return matrix.inverse
//    }
//
//    static func transformMatrix(for matrix: simd_float4x4, originLocation: CLLocation, location: CLLocation) -> simd_float4x4 {
//        let distance = Float(location.distance(from: originLocation))
//        let bearing = originLocation.bearingToLocationRadian(location)
//        let position = vector_float4(0.0, 0.0, -distance, 0.0)
//        let translationMatrix = MatrixHelper.translationMatrix(with: matrix_identity_float4x4, for: position)
//        let rotationMatrix = MatrixHelper.rotateAroundY(with: matrix_identity_float4x4, for: Float(bearing))
//        let transformMatrix = simd_mul(rotationMatrix, translationMatrix)
//        return simd_mul(matrix, transformMatrix)
//    }
//}
//
