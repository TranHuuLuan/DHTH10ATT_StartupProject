﻿namespace PresentationTier.NhanSu
{
    partial class frmThaiDoiChucVu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.bntxacnhan = new System.Windows.Forms.Button();
            this.comboBoxtenchucvu = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // bntxacnhan
            // 
            this.bntxacnhan.Location = new System.Drawing.Point(272, 10);
            this.bntxacnhan.Name = "bntxacnhan";
            this.bntxacnhan.Size = new System.Drawing.Size(75, 23);
            this.bntxacnhan.TabIndex = 1;
            this.bntxacnhan.Text = "Xác nhận";
            this.bntxacnhan.UseVisualStyleBackColor = true;
            // 
            // comboBoxtenchucvu
            // 
            this.comboBoxtenchucvu.FormattingEnabled = true;
            this.comboBoxtenchucvu.Location = new System.Drawing.Point(97, 12);
            this.comboBoxtenchucvu.Name = "comboBoxtenchucvu";
            this.comboBoxtenchucvu.Size = new System.Drawing.Size(169, 21);
            this.comboBoxtenchucvu.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Tên chức vụ:";
            // 
            // frmThaiDoiChucVu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(217)))), ((int)(((byte)(247)))));
            this.ClientSize = new System.Drawing.Size(360, 52);
            this.Controls.Add(this.bntxacnhan);
            this.Controls.Add(this.comboBoxtenchucvu);
            this.Controls.Add(this.label1);
            this.Name = "frmThaiDoiChucVu";
            this.Text = "frmThaiDoiChucVu";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button bntxacnhan;
        private System.Windows.Forms.ComboBox comboBoxtenchucvu;
        private System.Windows.Forms.Label label1;
    }
}