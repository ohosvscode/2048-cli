import { deviceInfo } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 标题区域
      Column() {
        Text("2048")
          .fontSize(48)
          .fontWeight(FontWeight.Bold)
          .fontColor("#1A1A1A")
          .margin({ bottom: 8 })
        
        Text("命令行游戏")
          .fontSize(16)
          .fontColor("#666666")
          .opacity(0.8)
      }
      .margin({ top: 60, bottom: 40 })

      // 主要内容卡片
      Column() {
        Column() {
          Text("📦 安装完成")
            .fontSize(20)
            .fontWeight(FontWeight.Medium)
            .fontColor("#1A1A1A")
            .margin({ bottom: 16 })
          
          Text("2048已成功安装到您的设备")
            .fontSize(15)
            .fontColor("#666666")
            .lineHeight(22)
            .margin({ bottom: deviceInfo.deviceType === '2in1' ? 16 : 0 })
          
          if (deviceInfo.deviceType === '2in1') {
            Text("💡 提示：该应用需要在终端中运行，终端输入 2048 命令即可开始游戏")
              .fontSize(14)
              .fontColor("#007AFF")
              .lineHeight(20)
              .padding({ top: 12, bottom: 12, left: 16, right: 16 })
              .backgroundColor("#E6F2FF")
              .borderRadius(8)
              .width("100%")
          }
        }
        .width("100%")
        .padding(24)
        .backgroundColor("#FFFFFF")
        .borderRadius(16)
        .shadow({
          radius: 8,
          color: "#1A000000",
          offsetX: 0,
          offsetY: 2
        })
      }
      .width("100%")
      .padding({ left: 20, right: 20 })
      .layoutWeight(1)

      // 底部链接区域
      Column() {
        Row({ space: 16 }) {
          Hyperlink("https://github.com/ohosvscode/2048-cli", "📚 GitHub 仓库")
          
          Text("|")
            .fontSize(14)
            .fontColor("#E5E5E5")
          
          Hyperlink("https://github.com/ohosvscode/2048-cli/blob/main/PRIVACY.md", "🔒 隐私政策")
        }
        .margin({ bottom: 8 })
        
        Text("© 2024 2048 CLI")
          .fontSize(12)
          .fontColor("#999999")
          .opacity(0.6)
      }
      .width("100%")
      .padding({ bottom: 32, top: 24 })
      .alignItems(HorizontalAlign.Center)
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#F5F5F5")
    .padding({ left: 0, right: 0 })
  }
}