import { deviceInfo } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  build() {
    Column() {
      Text("2048")
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 10 })

      Text("2048已安装到您的设备，我们提供以下命令：")
      Divider().margin({ top: 5, bottom: 5 })
      Text("2048: 打开2048游戏")
      if (deviceInfo.deviceType === '2in1') {
        Divider().margin({ top: 5, bottom: 5 })
        Text("您可以打开系统自带终端运行")
      }

      Row({ space: 10 }) {
        Hyperlink("https://github.com/ohosvscode/2048-cli", "点击打开 Github 仓库")
        Hyperlink("https://github.com/ohosvscode/2048-cli/blob/main/PRIVACY.md", "隐私政策")
      }.margin({ top: 5 })
    }.justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .padding({ top: 14, left: 20, right: 20 })
  }
}