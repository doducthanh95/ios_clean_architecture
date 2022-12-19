import SwiftUI

struct WorkoutcardCell: View {
    var body: some View {
        HStack {
            Image("img_workoutpic")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(15.0))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgFullbodyWorkou)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(13.0),
                                   alignment: .leading)
                            .padding(.trailing)
                        Text(StringConstants.kMsg180CaloriesBu)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray501)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(11.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(31.0),
                           alignment: .leading)
                    Spacer()
                    Button(action: {}, label: {
                        Image("img_arrowright")
                    })
                    .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                            bottomRight: 12.0)
                            .stroke(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .DeepPurpleA100,
                                        ColorConstants.Pink100]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(32.0),
                       alignment: .leading)
                LinearProgress(percentage: 0.33, backgroundColor: ColorConstants.Gray50,
                               foregroundColor: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                       .DeepPurpleA100, ColorConstants.IndigoA100]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing))
                    .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.Gray50))
                    .padding(.top, getRelativeHeight(8.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(50.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(10.0))
            .padding(.trailing, getRelativeWidth(15.0))
        }
        .frame(width: getRelativeWidth(313.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct WorkoutcardCell_Previews: PreviewProvider {

 static var previews: some View {
 			WorkoutcardCell()
 }
 } */
