import gradio as gr


def greet(name):
    return "Hello " + name + "!"


demo = gr.Interface(fn=greet, inputs="text", outputs="text")


if __name__ == "__main__":
    print("Running on 0.0.0.0:7007")
    demo.launch(server_name="0.0.0.0", server_port=7007, share=True)